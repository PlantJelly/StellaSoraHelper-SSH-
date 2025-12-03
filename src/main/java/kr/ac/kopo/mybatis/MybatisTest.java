package kr.ac.kopo.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import kr.ac.kopo.build.vo.BuildVO;

public class MybatisTest {
	
	@Disabled
	@Test
	public void Test01() {
		SqlSession mybatis = new MybatisConfig().getSession();
	}

//	@Disabled
	@Test
	public void Test02() {
		SqlSession mybatis = new MybatisConfig().getSession();
		BuildVO build = new BuildVO();
		build.setTitle("test");
		build.setNickname("test");
		build.setPassword("test");
		build.setContent("test");
		mybatis.insert("dao.BuildDAO.insertBuildGuest", build);
		mybatis.commit();
	}
}
