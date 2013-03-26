import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;

import com.hck.model.Role;
import com.hck.model.User;
import com.mongodb.BasicDBObject;
import com.mongodb.DBObject;
import com.mongodb.util.JSON;


public class JVMtest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Logger logger = LoggerFactory.getLogger(JVMtest.class);

		ApplicationContext ctx = new ClassPathXmlApplicationContext("mongo-db-config.xml");
		// TODO Auto-generated method stub
		logger.info("----"+ctx);
		 MongoOperations mongoOperation = 
	               (MongoOperations) ctx.getBean("mongoTemplate");
	 
		 Role role = new Role();
		 role.setId(new Long(8));
		 role.setRole(7);
		  User user = new User();
		  user.setId(new Long(8));
		  user.setFirstName("Harish19");
		  user.setLastName("kaparwan19");
		  user.setRole(role);
		  // save
		 // DBObject object = (DBObject) JSON.parse(user.toString());
		  
		  BasicDBObject doc = new BasicDBObject();
		  doc.put("user", user);
		  mongoOperation.save(doc, "users2");
	 
		  // find
		  User savedUser = mongoOperation.findOne(
			new Query( 
	                    Criteria.where("id").is("8")
	                ), User.class,"users"
	          );
	 
		  System.out.println("savedUser : " + savedUser);
	 
		  // update
		  mongoOperation.updateMulti(
			new Query(
	                    Criteria.where("firstName").is("Harish7")
	                ),
	                Update.update("firstName", "new password"), "users"
	          );
	 
		  // find
		  User updatedUser = mongoOperation.findOne(
			new Query(
	                    Criteria.where("firstName").is("Harish7")
	                ), User.class,"users"
	          );
	 
		  //System.out.println(".getRole().getRole() : " + updatedUser.getRole());
		//  System.out.println(".getRole().getRole() : " + updatedUser.getRole().getRole());

	 
		  // delete
		  mongoOperation.remove(
			new Query(
	                    Criteria.where("username").is("")
	                ), "users"
	          );
	 
		  // List
		  List<User> listUser = mongoOperation.findAll(User.class, "users");
		  System.out.println("Number of user = " + listUser.size());

	}

	
	static List<User> getUserList(){
		ApplicationContext ctx = new ClassPathXmlApplicationContext("mongo-db-config.xml");
		// TODO Auto-generated method stub
		System.out.println("----"+ctx);
		 MongoOperations mongoOperation = 
	               (MongoOperations) ctx.getBean("mongoTemplate");
		  List<User> listUser = mongoOperation.findAll(User.class, "users");

		  return listUser;
	}
}
