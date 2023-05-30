<%@page import="dao.StudentDao"%>
<%@page import="vo.Student"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%
	// 학생으로 회원가입 시킨다.
	
	// 요청 파라미터 값 조회
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	int grade = Integer.parseInt(request.getParameter("grade"));
	int deptNo = Integer.parseInt(request.getParameter("deptNo"));
	
	// Student 객체를 생성해서 요청파라미터로 전달받은 학생정보 저장
	Student student = new Student();
	student.setId(id);
	student.setPassword(password);
	student.setName(name);
	student.setGrade(grade);
	student.setDeptNo(deptNo);
	
	// 회원가입 업무로직 수행
	StudentDao studentDao = new StudentDao();
	
	// 아이디 중복체크
	if (studentDao.getStudentById(id) != null) {	// 아이디 중복 발생
		response.sendRedirect("form.jsp?err=id");
		return ;
	}
	
	// 회원정보 저장하기
	studentDao.insertStudent(student);
	
	// 회원가입 완료
	// registered.jsp를 재요청 url 응답
	//response.sendRedirect("course-resistration-list.jsp");
%>