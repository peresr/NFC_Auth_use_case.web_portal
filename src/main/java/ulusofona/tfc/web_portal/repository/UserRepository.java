package ulusofona.tfc.web_portal.repository;
 
import org.springframework.data.mongodb.repository.MongoRepository;

import org.springframework.stereotype.Repository;

import ulusofona.tfc.web_portal.model.User; 

/**
 * Created by Ricardo Peres on 14/11/15.
 */
@Repository
public interface UserRepository extends MongoRepository<User, String> { 
	
} 
