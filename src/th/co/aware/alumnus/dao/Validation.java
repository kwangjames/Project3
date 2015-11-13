package th.co.aware.alumnus.dao;

import org.springframework.beans.factory.annotation.Autowired;

import th.co.aware.alumnus.bean.user;

public class Validation {
	@Autowired
	UserDao userDao;

	public int validate(String username, String password) {

		int n = 0;

		if (username.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin")) {
			n = 1;
		} else if (username.equalsIgnoreCase("user") && password.equalsIgnoreCase("user")) {
			n = 2;
		} else {

		}

		return n;
	}

}
