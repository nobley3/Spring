package com.acorn.tourjoin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.regex.Pattern;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class JoinDAO {

	@Autowired
	DataSource ds;

//	회원가입
	public void regiUser(User user) {
		String sql="insert into USERTBL(userid,nickname,sort,pw,section,profileurl) values(?,?,'02',?,'01',null)";
		try {
			Connection con = ds.getConnection();
			PreparedStatement pst = con.prepareStatement(sql);
			
			pst.setString(1, user.getId());
			pst.setString(2, user.getNickname());
			pst.setString(3, user.getPw());
			pst.executeUpdate();
			
			pst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
//	아이디 중복확인 매서드
	public boolean checkId(String userid) {
		String sql = "SELECT COUNT(*) FROM USERTBL WHERE userid = ?";
		try {
			Connection con = ds.getConnection();
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, userid);
			ResultSet rs = pst.executeQuery();
			
			if(rs.next()) {
				int count = rs.getInt(1);
				return count > 0; //중복여부
			}
			rs.close();
			con.close();
			pst.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false; //오류가 발생한 경우도 중복 아이디가 아닌 것으로 처리
	}
	
//	닉네임 중복확인 매서드
	public boolean checkNickname(String nickname){
		String sql = "select count(*)from usertbl where nickname = ?";
		try {
			Connection con = ds.getConnection();
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, nickname);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				int count = rs.getInt(1);
				return count > 0;
			}
			rs.close();
			pst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
//	아이디 유효성
	public boolean validationid(String userid){
		String idreg = "^(?=.*[a-zA-Z])(?=.*\\d)[a-zA-Z\\d]{4,12}$";
		return Pattern.matches(idreg, userid);
	}
	
//	비밀번호 유효성
	public boolean validationPw(String pw) {
		String pwreg = "^(?=.*[A-Za-z])(?=.*\\d)(?=.*[$@$!%*?&])[A-Za-z\\d$@$!%*?&]{8,}$";
		return Pattern.matches(pwreg, pw);
	}
	
}
