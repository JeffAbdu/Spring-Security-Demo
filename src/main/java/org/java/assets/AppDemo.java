package org.java.assets;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class AppDemo {

	
	/// THIS METHOD DID'T WORK BECUSE THE TUTOR IN THE VIDEO DID'T SHOW THE DETAILS[THEN IT IS NOT USED, MyEncoder.java is used]:
	public static void main(String[] args) {
		
		ApplicationContext appContext = new ClassPathXmlApplicationContext("org/java/assets/PasswordDemo.java");
		PasswordDemo demo = appContext.getBean("passwordDemo", PasswordDemo.class);		
        demo.getMD5Hash("1234567");        
        ((ClassPathXmlApplicationContext) appContext).close();
        
	}

}
