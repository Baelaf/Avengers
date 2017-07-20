package com.avengers.professor.classManage.daoImpl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.avengers.db.dto.AcVO;
import com.avengers.db.dto.AsgnVO;
import com.avengers.db.dto.AtdcVO;
import com.avengers.db.dto.BoardVO;
import com.avengers.db.dto.EqVO;
import com.avengers.db.dto.ExamVO;
import com.avengers.db.dto.LaVO;
import com.avengers.db.dto.LctVO;
import com.avengers.db.dto.SaVO;
import com.avengers.db.dto.SubVO;
import com.avengers.db.dto.TeVO;
import com.avengers.db.dto.TlVO;
import com.avengers.professor.classManage.dao.ProfessorClassManageDao;
@Repository
public class ProfessorClassManageDaoImpl implements ProfessorClassManageDao {
	@Autowired
	protected SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) throws SQLException {
		this.sqlSession = sqlSession;
	}

	@Override
	public ArrayList<LctVO> selectLctList(String key, int firstRow, int endRow)
			throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public LctVO selectLct(String lct_num) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertLct(LctVO lctVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateLct(LctVO lctVO) throws SQLException {
		int result = sqlSession.update("lct.updateLctInfo", lctVO);
		return result;
	}

	@Override
	public ArrayList<ExamVO> selectExamList(String key, int firstRow, int endRow)
			throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ExamVO selectExam(String exam_num) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateExam(ExamVO examVO, String exam_num) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteExam(String exam_num) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<TeVO> selectTeList(String key, String exam_lct,
			int firstRow, int endRow) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	

	@Override
	public ArrayList<SaVO> selectSaList(String te_num) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertTe(TeVO teVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateTe(TeVO teVO, String te_num) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<AsgnVO> selectAsgnList(String key, int firstRow, int endRow)
			throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AsgnVO selectAsgn(String asgn_num) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertAsgn(AsgnVO asgnVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateAsgn(AsgnVO asgnVO, String asgn_num) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteAsgn(String asgn_num) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<SubVO> selectSubList(String key, int firstRow, int endRow)
			throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SubVO selectSub(String sub_num) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateSub(SubVO subVO, String sub_num) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<TlVO> selectTlList(String key, int firstRow, int endRow)
			throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TlVO selectTl(String tl_num) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateTl(TlVO tlVO, String tl_num) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<AtdcVO> selectAtdcList(Date atdc_date, String lct_num)
			throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateAtdc(AtdcVO atdcVO, Date atdc_date, String atdc_tl)
			throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<AcVO> selectAcList(String ac_atdc) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AcVO selectAc(String ac_num) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<BoardVO> selectBoardList(String key, int firstRow,
			int endRow) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BoardVO selectBoard(String board_num) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertBoard(BoardVO boardVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateBoard(BoardVO boardVO, String board_num)
			throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<LaVO> selectLaList(int firstRow, int endRow)
			throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public LaVO selectLa(String la_num) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	//배현상--------------------------------------------------
	@Override
	public ArrayList<Map<String, String>> selectPrfsLecture(String prfs_num)
			throws SQLException {
		ArrayList<Map<String, String>> prfsLctList = (ArrayList<Map<String, String>>) sqlSession.selectList("lct.selectPrfsLecture", prfs_num);
		return prfsLctList;
	}

	@Override
	public Map<String, String> selectDetailLct(String lct_num)
			throws SQLException {
		Map<String, String> lctInfo = (Map<String, String>) sqlSession.selectOne("lct.selectDetailLecture", lct_num);
		return lctInfo;
	}

	@Override
	public ArrayList<Map<String, String>> selectPrfsExamList(
			Map<String, String> key) throws SQLException {
		ArrayList<Map<String, String>> prfsExamList = (ArrayList<Map<String, String>>) sqlSession.selectList("exam.selectPrfsExamList", key);
		return prfsExamList;
	}

	@Override
	public LctVO selectLctYearQtr(String lct_num) throws SQLException {
		LctVO lctVO = (LctVO) sqlSession.selectOne("lct.selectLctYearQtr", lct_num);
		return lctVO;
	}

	@Override
	public int insertExam(ExamVO examVO) throws SQLException {
		int result = sqlSession.insert("exam.insertExam", examVO);
		return result;
	}

	@Override
	public ArrayList<String> selectExamPk(String exam_lct) throws SQLException {
		//기본키 역순정렬, 시험에 대해 학생을 등록했는지 안했는지에 대한 exam_check 를 검사(1,등록/2,미등록)
		ArrayList<String> examPkList = (ArrayList<String>) sqlSession.selectList("exam.selectExamPk", exam_lct);
		return examPkList;
	}

	@Override
	public int insertStudTe(Map<String, String> key) throws SQLException {
		int result = sqlSession.insert("te.insertStudTe", key);
		return result;
	}

	@Override
	public int updateExamCheck(String exam_num) throws SQLException {
		int result = sqlSession.update("exam.updateExamCheck", exam_num);
		return result;
	}
	
	@Override
	public ArrayList<EqVO> selectEqList(String exam_num) throws SQLException {
		ArrayList<EqVO> eqList = (ArrayList<EqVO>) sqlSession.selectList("eq.selectEqAllDataList", exam_num);
		return eqList;
	}

	@Override
	public int deleteEqInfo(String eq_num) throws SQLException {
		int result = sqlSession.delete("eq.deleteEqInfo", eq_num);
		return result;
	}

	@Override
	public ArrayList<String> selectEqPkList(String exam_num)
			throws SQLException {
		ArrayList<String> eqPkList = (ArrayList<String>) sqlSession.selectList("eq.selectEqPkList", exam_num);
		return eqPkList;
	}

	@Override
	public int allFunctionEq(ArrayList<EqVO> eqList) throws SQLException {
		int result = -1;
		for(int i=0; i<eqList.size(); i++){
			if(eqList.get(i).getEq_num().equals("-1")){
				result = sqlSession.insert("eq.insertEqInfo", eqList.get(i));
			} else if(eqList.get(i).getEq_num().substring(eqList.get(i).getEq_num().length()-1).equals("u")){
				System.out.println(eqList.get(i).getEq_num().substring(eqList.get(i).getEq_num().length()-1));
				eqList.get(i).setEq_num(eqList.get(i).getEq_num().substring(0, eqList.get(i).getEq_num().length()-1));
				result = sqlSession.update("eq.updateEqInfo", eqList.get(i));
			} else if(eqList.get(i).getEq_num().substring(eqList.get(i).getEq_num().length()-1).equals("d")){
				System.out.println(eqList.get(i).getEq_num().substring(eqList.get(i).getEq_num().length()-1));
				eqList.get(i).setEq_num(eqList.get(i).getEq_num().substring(0, eqList.get(i).getEq_num().length()-1));
				result = sqlSession.delete("eq.deleteEqInfo", eqList.get(i));
			}
		}
		return result;
	}

	@Override
	public int insertEq(ArrayList<EqVO> eqList) throws SQLException {
		int result = -1;
		for (int i = 0; i < eqList.size(); i++) {
			result = sqlSession.insert("eq.insertEqInfo", eqList.get(i));
		}
		return result;
	}
	

}
