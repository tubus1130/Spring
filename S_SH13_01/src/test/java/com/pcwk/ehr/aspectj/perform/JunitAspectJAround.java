package com.pcwk.ehr.aspectj.perform;

import static org.junit.Assert.*;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.pcwk.ehr.aspectj.Member;

@FixMethodOrder(MethodSorters.NAME_ASCENDING)// 테스트 메소드 수행순서 : a-z순으로 작동
@RunWith(SpringJUnit4ClassRunner.class) // JUnit기능을 스프링 프레임으로 확장
@ContextConfiguration(locations = "/com/pcwk/ehr/aspectj/perform/aspectj-around-applicationContext.xml") // applicationContext.xml loading
public class JunitAspectJAround {
	
	final Logger LOG = LogManager.getLogger(this.getClass());
	
	@Autowired //컨텍스트 프레임워크는 변수 타입과 일치하는 컨텍스트 내의 빈을 찾고, 변수에 주입
	ApplicationContext context;
	
	@Autowired
	Member member;
	
	
	@Before
	public void setUp() throws Exception {
		LOG.debug("========================");
		LOG.debug("=0.setUp()=");
		LOG.debug("========================");
		
		LOG.debug("context : " + context);
		LOG.debug("member : " + member);
		assertNotNull(context);
		assertNotNull(member);
	}

	@Test
	public void aroundAspect() {
		member.doSave();
		
		member.doUpdate();
	}

}
