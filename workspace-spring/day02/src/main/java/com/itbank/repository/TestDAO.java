package com.itbank.repository;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository  // 안 붙여도 되는데 붙여줌
public interface TestDAO {
	// 인터페이스는 추상 메서드만 포함할 수 있으므로, 함수의 내용을 작성할 수 없다
	// 1) xml 설정 파일로 연결시키기		 (상세한 쿼리문을 작성할 때, 사용 빈도 낮음)
	// 2) 어노테이션을 이용하여 SQL문 작성하기	 (단순한 쿼리문을 작성할 때, 사용 빈도 낮음)

	@Select("select banner from v$version")
	String selectVersion();		// String(문자열)으로 반환하라는 뜻
								// 인터페이스에서는 자바 함수를 사용할 수 없다 (기초)
								// 인터페이스는 직접 객체를 생성할 수 없다 (기초)
}
