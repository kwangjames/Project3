package th.co.aware.alumnus.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.apache.tomcat.jni.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCallback;
import org.springframework.jdbc.core.RowMapper;

import th.co.aware.alumnus.bean.user;

public class UserDao {
	@Autowired
	DataSource dataSource;

	public Boolean insertUser(final user u) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		String query = "INSERT INTO user "
				+ "(fname,lname,age,tel,email,graduate_stop,pic,faculty,major) VALUES (?,?,?,?,?,?,?,?,?)";

		return jdbcTemplate.execute(query, new PreparedStatementCallback<Boolean>() {

			@Override
			public Boolean doInPreparedStatement(PreparedStatement ps) throws SQLException, DataAccessException {
				// ps.setInt(1, u.getU_id());
				ps.setString(1, u.getFname());
				ps.setString(2, u.getLname());
				ps.setString(3, u.getAge());
				ps.setString(4, u.getTel());
				ps.setString(5, u.getEmail());
				ps.setString(6, u.getGraduate_stop());
				ps.setString(7, u.getPic());
				ps.setString(8, u.getFaculty());
				ps.setString(9, u.getMajor());

				if (ps.executeUpdate() >= 1) {
					return true;
				}
				;
				return false;
			}
		});
	}

	public user getUserByUsernameAndPassword(String username, String password) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		String sql = "select * from  user where username Like '" + username + "' and password Like '" + password + "'";
		List<user> st = jdbcTemplate.query(sql, new RowMapper<user>() {
			@Override
			public user mapRow(ResultSet rs, int arg1) throws SQLException {
				user s = new user();
				s.setU_id(rs.getInt(1));
				s.setFname(rs.getString(2));
				s.setLname(rs.getString(3));
				s.setAge(rs.getString(4));
				s.setTel(rs.getString(5));
				s.setEmail(rs.getString(6));
				s.setGraduate_stop(rs.getString(7));
				s.setPic(rs.getString(8));
				s.setUsername(rs.getString(9));
				s.setPassword(rs.getString(10));
				return s;
			}
		});
		if (st.size() != 0) {
			return st.get(0);
		} else {
			return null;
		}
	}

	public List<user> getuser() {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		String sql = "select * from user";
		return jdbcTemplate.query(sql, new RowMapper<user>() {
			@Override
			public user mapRow(ResultSet rs, int arg1) throws SQLException {
				user p = new user();
				p.setU_id(rs.getInt(1));
				p.setFname(rs.getString(2));
				p.setLname(rs.getString(3));
				p.setAge(rs.getString(4));
				p.setTel(rs.getString(5));
				p.setEmail(rs.getString(6));
				p.setGraduate_stop(rs.getString(7));
				p.setPic(rs.getString(8));
				p.setFaculty(rs.getString(9));
				p.setMajor(rs.getString(10));
				return p;
			}
		});

	}

	public void deleteData(String id) {
		String sql = "delete from user where u_id=" + id;
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		jdbcTemplate.update(sql);

	}

	public void updateData(user user) {

		String sql = "UPDATE user set fname = ?,lname = ?, age = ?, tel = ?,email = ? where u_id = '" + user.getU_id()
				+ "' ";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		jdbcTemplate.update(sql,
				new Object[] { user.getFname(), user.getLname(), user.getAge(), user.getTel(), user.getEmail() });
	}

	public List<user> getListUserById(int id) {

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		return jdbcTemplate.query("select * from user where u_id = '" + id + "'", new RowMapper<user>() {

			@Override
			public user mapRow(ResultSet rs, int rownumber) throws SQLException, DataAccessException {
				// TODO Auto-generated method stub

				user e = new user();

				e.setU_id(rs.getInt(1));
				e.setFname(rs.getString(2));
				e.setLname(rs.getString(3));
				e.setAge(rs.getString(4));
				e.setEmail(rs.getString(5));

				return e;

			}

		});
	}

	public user getUserById(int id) {

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		List<user> u = jdbcTemplate.query("select * from user where u_id = '" + id + "'", new RowMapper<user>() {

			@Override
			public user mapRow(ResultSet rs, int rownumber) throws SQLException, DataAccessException {
				// TODO Auto-generated method stub

				user e = new user();

				e.setU_id(rs.getInt(1));
				e.setFname(rs.getString(2));
				e.setLname(rs.getString(3));
				e.setAge(rs.getString(4));
				e.setTel(rs.getString(5));
				e.setEmail(rs.getString(6));

				return e;

			}

		});
		return u.get(0);
	}

	public List<user> getUserByName(String fname) {

		String s = "%" + fname + "%";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		List<user> u = jdbcTemplate.query("select * from user where fname like \"" + s + "\"", new RowMapper<user>() {

			@Override
			public user mapRow(ResultSet rs, int rownumber) throws SQLException, DataAccessException {
				// TODO Auto-generated method stub

				user p = new user();
				p.setU_id(rs.getInt(1));
				p.setFname(rs.getString(2));
				p.setLname(rs.getString(3));
				p.setAge(rs.getString(4));
				p.setTel(rs.getString(5));
				p.setEmail(rs.getString(6));
				p.setGraduate_stop(rs.getString(7));
				p.setPic(rs.getString(8));
				p.setFaculty(rs.getString(9));
				p.setMajor(rs.getString(10));
				return p;

			}

		});
		return u;
	}

	public List<user> getUserByYear(String year) {

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		List<user> u = jdbcTemplate.query("select * from user where graduate_stop like \"" + year + "\"",
				new RowMapper<user>() {

					@Override
					public user mapRow(ResultSet rs, int rownumber) throws SQLException, DataAccessException {
						// TODO Auto-generated method stub
						user p = new user();
						p.setU_id(rs.getInt(1));
						p.setFname(rs.getString(2));
						p.setLname(rs.getString(3));
						p.setAge(rs.getString(4));
						p.setTel(rs.getString(5));
						p.setEmail(rs.getString(6));
						p.setGraduate_stop(rs.getString(7));
						p.setPic(rs.getString(8));
						p.setFaculty(rs.getString(9));
						p.setMajor(rs.getString(10));
						return p;

					}

				});
		return u;
	}

	public List<user> getUserByFac(String fac) {

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		List<user> u = jdbcTemplate.query("select * from user where faculty like \"" + fac + "\"",
				new RowMapper<user>() {

					@Override
					public user mapRow(ResultSet rs, int rownumber) throws SQLException, DataAccessException {
						// TODO Auto-generated method stub

						user p = new user();
						p.setU_id(rs.getInt(1));
						p.setFname(rs.getString(2));
						p.setLname(rs.getString(3));
						p.setAge(rs.getString(4));
						p.setTel(rs.getString(5));
						p.setEmail(rs.getString(6));
						p.setGraduate_stop(rs.getString(7));
						p.setPic(rs.getString(8));
						p.setFaculty(rs.getString(9));
						p.setMajor(rs.getString(10));
						return p;

					}

				});
		return u;
	}
}
