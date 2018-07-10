package com.josephtaylorparrish.webapp;

import java.security.Principal;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;

@Controller
public class MainController
{
	@Value("${spring.datasource.url}")
  	private String dbUrl;

  	@Autowired
  	private DataSource dataSource;

	@GetMapping(value = { "/", "/index" })
	public String welcome(Model model)
	{
		return "index";
	}

	@GetMapping(value = "/forsale")
	public String forSale(Model model)
	{
		return "forsale";
	}

	@GetMapping(value = "/about")
	public String about(Model model)
	{
		return "about";
	}

	@GetMapping(value = "/contact")
	public String contact(Model model)
	{
		return "contact";
	}

	@GetMapping(value = "/admin")
	public String admin(Model model, Principal principal)
	{

		User loginedUser = (User) ((Authentication) principal).getPrincipal();

		String userInfo = WebUtils.toString(loginedUser);
		model.addAttribute("userInfo", userInfo);

		return "admin";
	}

	@GetMapping(value = "/login")
	public String login(Model model)
	{
		return "login";
	}

	@GetMapping(value = "/userInfo")
	public String userInfo(Model model, Principal principal)
	{

		// After user login successfully.
		String userName = principal.getName();

		System.out.println("User Name: " + userName);

		User loginedUser = (User) ((Authentication) principal).getPrincipal();

		String userInfo = WebUtils.toString(loginedUser);
		model.addAttribute("userInfo", userInfo);

		return "userInfo";
	}

	@GetMapping(value = "/403")
	public String accessDenied(Model model, Principal principal)
	{

		if (principal != null)
		{
			User loginedUser = (User) ((Authentication) principal).getPrincipal();

			String userInfo = WebUtils.toString(loginedUser);

			model.addAttribute("userInfo", userInfo);

			String message = "Hi " + principal.getName() //
					+ "<br> You do not have permission to access this !";
			model.addAttribute("message", message);

		}

		return "error403";
	}
	
@RequestMapping("/db")
 public String db(Map<String, Object> model) {
    try (Connection connection = dataSource.getConnection()) {
      Statement stmt = connection.createStatement();
      stmt.executeUpdate("CREATE TABLE IF NOT EXISTS ticks (tick timestamp)");
      stmt.executeUpdate("INSERT INTO ticks VALUES (now())");
      ResultSet rs = stmt.executeQuery("SELECT tick FROM ticks");

      ArrayList<String> output = new ArrayList<String>();
      while (rs.next()) {
        output.add("Read from DB: " + rs.getTimestamp("tick"));
      }

      model.put("records", output);
      return "db";
    } catch (Exception e) {
      model.put("message", e.getMessage());
      return "error";
    }
  }

  @Bean
  public DataSource dataSource() throws SQLException {
    if (dbUrl == null || dbUrl.isEmpty()) {
      return new HikariDataSource();
    } else {
      HikariConfig config = new HikariConfig();
      config.setJdbcUrl(dbUrl);
      return new HikariDataSource(config);
    }
  }

}
