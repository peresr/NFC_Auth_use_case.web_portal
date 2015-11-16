package ulusofona.tfc.web_portal.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

import ulusofona.tfc.web_portal.model.User;

/**
 * Created by Ricardo Peres on 14/11/15.
 */
@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private MongoTemplate mongoTemplate;
	
	public void addUser(User user) {
		
	}
}