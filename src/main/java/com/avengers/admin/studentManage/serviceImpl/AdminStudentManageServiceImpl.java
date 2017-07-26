package com.avengers.admin.studentManage.serviceImpl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.avengers.admin.studentManage.dao.AdminStudentManageDao;
import com.avengers.admin.studentManage.service.AdminStudentManageService;
import com.avengers.db.dto.BoardVO;
import com.avengers.db.dto.StudVO;
@Service
public class AdminStudentManageServiceImpl implements AdminStudentManageService {

	@Autowired
	private AdminStudentManageDao amdinStudentDAO;
	
	public void setAmdinStudentDAO(AdminStudentManageDao amdinStudentDAO) {
		this.amdinStudentDAO = amdinStudentDAO;
	}


	@Override
	public StudVO selectStud(String stud_num) throws SQLException {
		return amdinStudentDAO.selectStud(stud_num);
	}

	@Override
	public int insertStud(StudVO studVO) throws SQLException {
		int result = amdinStudentDAO.insertStud(studVO);
		return result;
	}


	@Override
	public int deleteStud(String stud_num) throws SQLException {
		int result = amdinStudentDAO.deleteStud(stud_num);
		return result;
	}

	@Override
	public ArrayList<StudVO> selectStudList() throws SQLException {
		ArrayList<StudVO> studentList = new ArrayList<StudVO>();
		studentList = amdinStudentDAO.selectStudList();
		return studentList;
	}


	@Override
	public String selectStudNum() throws SQLException {
		String studNum = amdinStudentDAO.selectStudNum();
		return studNum;
	}


	@Override
	public void insertSecurity(StudVO studVO) {
		amdinStudentDAO.insertSecurity(studVO);
	}


	@Override
	public int updateStud(StudVO studVO) throws SQLException {
		int result = amdinStudentDAO.updateStud(studVO);
		return result;
	}


	@Override
	public ArrayList<StudVO> selectStudbyKeyword(String keyword) {
		
		return amdinStudentDAO.selectStudbyKeyword(keyword);
	}


	
	
	//페이징처리
	
	@Override
	public ArrayList<StudVO> selectStudList(StudVO studVO, int firstRow, int lastRow) throws SQLException {
		return amdinStudentDAO.selectStudList(studVO, firstRow, lastRow);
	}


	@Override
	public ArrayList<StudVO> selectSearchList(StudVO studVO) {
		return amdinStudentDAO.selectSearchList(studVO);
	}


	@Override
	public int selectStudCount(StudVO studVO) throws SQLException {
		return amdinStudentDAO.selectStudCount(studVO);
	}


	@Override
	public int getEmpListCount(StudVO studVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public List<StudVO> getEmpList(StudVO studVO) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}
