package ulusofona.tfc.web_portal.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

/**
 * Created by Ricardo Peres on 14/11/15.
 */
@Document(collection = "users")
public class User {

	@Id
	private String email;
	private String password;

	/*
	 * 
	 */
	public User() {
		
	}
	
	/*
	 * 
	 */
	public User(String email, String password) {
		this.email = email;
		this.password = password;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email
	 *            the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @return password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
}