package dao;

import util.DaoHelper;
import vo.Student;

public class StudentDao {

	public void insertStudent(Student student) {
		DaoHelper.update("studentDao.insertStudent", student.getId(),
													 student.getPassword(),
													 student.getName(),
													 student.getGrade(),
													 student.getDeptNo());
	}
	
	// 똑같은 id 가진 학생을 중복조회하고 가입을 승인하지 않는다.
	// 반환타입이 있기때문에 return 
	public Student getStudentById(String id) {
		return DaoHelper.selectOne("studentDao.getStudentById", rs -> {
			Student student = new Student();
			student.setId(rs.getString("student_id"));
			student.setPassword(rs.getString("student_password"));
			student.setName(rs.getString("student_name"));
			student.setGrade(rs.getInt("student_grade"));
			student.setUpdateDate(rs.getDate("student_update_date"));
			student.setCreateDate(rs.getDate("student_create_date"));
			student.setDeptNo(rs.getInt("dept_no"));
			
			return student;
		}, id);
	}
	
}
