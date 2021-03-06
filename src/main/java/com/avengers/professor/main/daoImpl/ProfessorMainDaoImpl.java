package com.avengers.professor.main.daoImpl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.avengers.db.dto.BoardVO;
import com.avengers.db.dto.CnsVO;
import com.avengers.db.dto.DeptVO;
import com.avengers.db.dto.LctVO;
import com.avengers.db.dto.PerschdVO;
import com.avengers.db.dto.PrfsVO;
import com.avengers.professor.main.dao.ProfessorMainDao;
@Repository
public class ProfessorMainDaoImpl implements ProfessorMainDao {
	@Autowired
	protected SqlSession sqlSession;

	@Override
	public PrfsVO selectPrfs(String prfs_num) throws SQLException {
		PrfsVO prfs=(PrfsVO) sqlSession.selectOne("prfs.selectPrfs", prfs_num);
		return prfs;
	}

	@Override
	public ArrayList<PerschdVO> selectPerschdList(String perschd_writer)
			throws SQLException {
		ArrayList<PerschdVO> perschdList = (ArrayList<PerschdVO>)sqlSession.selectList("perschd.selectPerschdList",perschd_writer);
		return perschdList;
	}

	@Override
	public List<HashMap<String, String>> selectLctList(String lct_prfs, String lct_yr,
			String lct_qtr) throws SQLException {
		LctVO lctVO = new LctVO();
		lctVO.setLct_prfs(lct_prfs);
		lctVO.setLct_yr(lct_yr);
		lctVO.setLct_qtr(lct_qtr);
		List<HashMap<String, String>> lctList = (List<HashMap<String, String>>)sqlSession.selectList("lct.selectLctList", lctVO);
		return lctList;
	}

	@Override
	public ArrayList<CnsVO> selectCnsList(String cns_prfs) throws SQLException {
		ArrayList<CnsVO> cnsList = (ArrayList<CnsVO>)sqlSession.selectList("cns.selectCnsList", cns_prfs);
		return cnsList;
	}
	
	@Override
	public ArrayList<BoardVO> selectPortalNoticeList() {
		ArrayList<BoardVO> portalNoticeList = (ArrayList<BoardVO>)sqlSession.selectList("board.selectPortalNoticeList");
		return portalNoticeList;
	}
	
	@Override
	public ArrayList<BoardVO> selectSchoolNoticeList() {
		ArrayList<BoardVO> schoolNoticeList = (ArrayList<BoardVO>)sqlSession.selectList("board.selectSchoolNoticeList");
		return schoolNoticeList;
	}
	
	@Override
	public ArrayList<BoardVO> selectDepartmentNoticeList(String bc_dept) {
		ArrayList<BoardVO> departmentNoticeList = (ArrayList<BoardVO>)sqlSession.selectList("board.selectDepartmentNoticeList",bc_dept);
		return departmentNoticeList;
	}
	
	@Override
	public ArrayList<PerschdVO> selectSchoolScheduleList() {
		ArrayList<PerschdVO> schoolScheduleList = (ArrayList<PerschdVO>)sqlSession.selectList("perschd.selectSchoolScheduleList");
		return schoolScheduleList;
	}
	@Override
	public DeptVO selectDept(String prfs_dept) throws SQLException {
		DeptVO dept =(DeptVO)sqlSession.selectOne("dept.selectDept",prfs_dept); 
		return dept;
	}

	@Override
	public ArrayList<BoardVO> getProfessorMainSchoolNotice()
			throws SQLException {
		return (ArrayList<BoardVO>)sqlSession.selectList("board.getStudentMainSchoolNotice");
	}

	@Override
	public ArrayList<BoardVO> getProfessorMainDepartNotice(String prfs_dept)
			throws SQLException {
		String stud_dept = "B"+prfs_dept;
		return (ArrayList<BoardVO>)sqlSession.selectList("board.getStudentMainDepartment",stud_dept);
	}

	@Override
	public ArrayList<BoardVO> getProfessorMainPotalNotice() throws SQLException {
		return (ArrayList<BoardVO>)sqlSession.selectList("board.getStudentMainPotalNotice");
	}

	@Override
	public String selectSchedule(String prfs_num) throws SQLException {
		return (String)sqlSession.selectOne("perschd.professorSchedule",prfs_num);
	}

	

}
