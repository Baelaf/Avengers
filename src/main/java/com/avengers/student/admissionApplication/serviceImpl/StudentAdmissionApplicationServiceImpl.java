package com.avengers.student.admissionApplication.serviceImpl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.avengers.db.dto.LctVO;
import com.avengers.db.dto.TlVO;
import com.avengers.student.admissionApplication.dao.StudentAdmissionApplicationDao;
import com.avengers.student.admissionApplication.service.StudentAdmissionApplicationService;


/**
 * 수강신청
 * StudentAdmissionApplicationServiceImpl
 * @author 관리자
 *2017.07.11
 */

@Service
public class StudentAdmissionApplicationServiceImpl implements
		StudentAdmissionApplicationService {

	@Autowired
	private StudentAdmissionApplicationDao stuAdmAppDAO;
	
	public void setStuAdmAppDAO(StudentAdmissionApplicationDao stuAdmAppDAO) {
		this.stuAdmAppDAO = stuAdmAppDAO;
	}

	@Override
	public ArrayList<LctVO> selectLctList(Map<String, String> searchKeys)
			throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<LctVO> selectLctList() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<TlVO> selectTlList(String tl_stud) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertTlList(ArrayList<TlVO> tlList) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteTl(ArrayList<TlVO> tlList) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertCartList(ArrayList<TlVO> tlList) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delteCart(ArrayList<TlVO> tlList) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<TlVO> selectStudClass(String tl_stud) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}
