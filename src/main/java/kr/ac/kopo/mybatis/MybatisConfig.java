package kr.ac.kopo.mybatis;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisConfig {
	
	private SqlSession session;

	public MybatisConfig() {
		String resource = "mybatis/mybatis-config.xml";
		try {
			InputStream inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			
			session = sqlSessionFactory.openSession();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}	
	
	public SqlSession getSession() {
		return session;
	}
}
