package com.acorn.memo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Memo_DAO {

	@Autowired
	DataSource ds;
	
	
	
	public String getMemoCode() {		
		String code="";
		String sql =" select  'A' ||  to_char( memo_tbl_sequence.NEXTVAL , 'FM000') from dual ";
		
		try {
			Connection con = ds.getConnection();
			PreparedStatement pst = con.prepareStatement(sql);
			ResultSet  rs = pst.executeQuery();
			if(rs.next()) {					
				System.out.println(rs.getString(1));
				code = rs.getString(1);				 
			}
		}catch(Exception e) {
			
		}
		return code;
		
	}
	
	public void insertMemo(Memo memo) {
		String sql = "insert into memo_tbl(code,content) values (?,?)";
		try {
			Connection con = ds.getConnection();
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, getMemoCode());
			pst.setString(2, memo.getContent());
			pst.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	 
	
	
	
	public ArrayList<Memo> selectAll() {
		String sql="select code,rownum ,content from memo_tbl";
		ArrayList<Memo> list = new ArrayList<Memo>();
		Memo memo = new Memo();
		try {
			Connection con = ds.getConnection();
			PreparedStatement pst = con.prepareStatement(sql);
			ResultSet  rs = pst.executeQuery();
			while(rs.next()) {
				list.add(new Memo(rs.getString(1),rs.getInt(2),rs.getString(3)));
 
			}
			rs.close();
			pst.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public void deleteMemo(String code) {
		String sql = "delete memo_tbl where code=?";
		
		 try {
			Connection con = ds.getConnection();
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, code);
			pst.executeUpdate();
			pst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
