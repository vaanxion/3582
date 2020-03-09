package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.porder;

public class porderDAO implements implDao {

	public static void main(String[] args) {
		/*�H�U���s�W�]�ϢҢҡ^������*/
		/*porder p=new porder();	
		p.setNew_desk("test");			
		p.setNew_dishes1(5);				
		p.setNew_dishes2(5);
		p.setNew_dishes3(5);
		new porderDAO().add(p);	*/
		/*----------�ڬO���j�u----------*/
		/*�H�U���d�ߡ]�ߢ�Ӣ��^������*/
		//System.out.println(new porderDAO().query());
		/*ResultSet rs=new porderDAO().query();		
		try {										
			rs.next();								
			System.out.println(rs.getString("name"));
		} catch (SQLException e) {					
			// TODO Auto-generated catch block		
			e.printStackTrace();					
		}*/											
		/*----------�ڬO���j�u----------*/
		/*�H�U����s�]��ޢҢϢ�ӡ^������*/
		/*porder p=new porder();
		p.setNew_desk("Test");			
		p.setNew_dishes1(5);				
		p.setNew_dishes2(5);
		p.setNew_dishes3(5);
		new porderDAO().update(1, p);*/
		/*----------�ڬO���j�u----------*/	
		/*porder p = new porder();
		p.setName("test");
		p.setRuler(5);
		p.setPen(5);		
		new porderDAO().update(11, p);*/
	}

	@Override
	public void add(Object o) {
		porder p = (porder) o;
		String sql = "insert into AI_Bartender.Wine(id,enName,chName,type,percent,ml,price,unit,place,grape,feature,status,imgPath,createUser,createTime,updateUser,updateTime) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,sysdate(),?,sysdate())";
		Connection conn = DBconn.getConn();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, p.getId());
			ps.setString(2, p.getEnName());
			ps.setString(3, p.getChName());
			ps.setString(4, p.getType());
			ps.setDouble(5, p.getPercent());
			ps.setInt(6, p.getMl());
			ps.setInt(7, p.getPrice());
			ps.setString(8, p.getUnit());
			ps.setString(9, p.getPlace());
			ps.setString(10, p.getGrape());
			ps.setString(11, p.getFeature());
			ps.setString(12, p.getStatus());
			ps.setString(13, p.getImgPath());
			ps.setString(14, p.getCreateUser());
			//ps.setDate(15, p.getCreateTime());
			ps.setString(15, p.getUpdateUser());
			//ps.setDate(17, p.getCreateTime());
			ps.executeUpdate();
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

	@Override
	public ResultSet query() {
		Connection conn = DBconn.getConn();
		String sql = "SELECT * FROM AI_Bartender.Wine";
		ResultSet rs = null;
		try {
			Statement st = conn.createStatement();
			rs = st.executeQuery(sql);
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return rs;
	}

	@Override
	public void update(String id, Object o) {
		porder p=(porder)o;
		String sql = null;
		System.out.println("img="+p.getImgPath());
		if(p.getImgPath() == null) {
			sql="update AI_Bartender.Wine set enName='"+p.getEnName()+"'"+
					", chName='"+p.getChName()+"'"+
					", type='"+p.getType()+"'"+
					" , percent="+p.getPercent()+
					" , ml="+p.getMl()+
					" , price="+p.getPrice()+
					" , unit='"+p.getUnit()+"'"+
					" , place='"+p.getPlace()+"'"+
					" , grape='"+p.getGrape()+"'"+
					" , feature='"+p.getFeature()+"'"+
					" , status='"+p.getStatus()+"'"+
					" where id='"+id+"'";
		}else {
		sql="update AI_Bartender.Wine set enName='"+p.getEnName()+"'"+
				", chName='"+p.getChName()+"'"+
				", type='"+p.getType()+"'"+
				" , percent="+p.getPercent()+
				" , ml="+p.getMl()+
				" , price="+p.getPrice()+
				" , unit='"+p.getUnit()+"'"+
				" , place='"+p.getPlace()+"'"+
				" , grape='"+p.getGrape()+"'"+
				" , feature='"+p.getFeature()+"'"+
				" , status='"+p.getStatus()+"'"+
				" , imgPath='"+p.getImgPath()+"'"+
				" where id='"+id+"'";
		}
		System.out.println(sql);
		Connection conn=DBconn.getConn();
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/*public void update2(int id, Object o) {
		porder p=(porder)o;
		
		String sql="update new_menu set new_desk=?,new_dishes1=?,new_dishes2=?,new_dishes3=?,new_sum=? where id=?";
		
		
		Connection conn=DBconn.getConn();
		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, p.getNew_desk());
			ps.setInt(2, p.getNew_dishes1());
			ps.setInt(3, p.getNew_dishes2());
			ps.setInt(4, p.getNew_dishes3());
			ps.setInt(5, p.getNew_sum());
			ps.setInt(6, id);
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}*/
	@Override
	public void delete(String id) {
String sql="delete from AI_Bartender.Wine where id="+id;		
		Connection conn=DBconn.getConn();		
		try {
			PreparedStatement ps=conn.prepareStatement(sql);			
			ps.executeUpdate();			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
