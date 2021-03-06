<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




<!--side Category-->
	<%@include file="../common/resSchSideCategory.jsp" %>

<c:if test="${not empty insertScrappl}">
		<div
			class="alert alert-success col-md-12 col-sm-12 alert-icon alert-dismissible fade in"
			role="alert">
			<div class="col-md-2 col-sm-2 icon-wrapper text-center">
				<span class="fa fa-check fa-2x"></span>
			</div>
			<div class="col-md-10 col-sm-10">
				<button type="button" class="close" data-dismiss="alert"
					aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
				<p>
					<strong>장학신청이 성공적으로 처리되었습니다.</strong>
				</p>
			</div>
		</div>
	</c:if>
	
<form action = "${pageContext.request.contextPath}/student/insertSchAppl" method="post">



<div class="col-md-10">
	<div class="panel panel-default">
		<div class="panel-heading" style="background-color: #2196F3;  margin-top: 10px;">
			<h4 style="color: #fff; font-weight: bold; font-size: 20px;">기본정보입력</h4>
       		 </div> 
       	<div class="panel-body" style="font-size:16px;">		
		<div class="col-md-5 padding-0">		             
		
		<label class='control-label'>이름</label>
					  <input required type="text" class="form-control" name="stud_nm" onfocus="true" value="${stud.stud_nm}" >
		
		<label class='control-label'>영문이름</label>
					  <input type="text" class="form-control"  name="stud_eng_nm" value="${stud.stud_eng_nm}">
		
		<label class='control-label'>장학금명</label><br/>
					  <select required name="scr_nm" >
						<c:choose>
					<c:when test="${not empty scrList}">
						<c:forEach var="scr" items="${scrList}" varStatus="status">
							<option value="${scr.scr_num}">${scr.scr_nm}</option>
						</c:forEach>
						</c:when>
						</c:choose>
					 </select>
			 <br>
									
					<label class='control-label'>주민등록번호</label>
				  	<input required type="text" class="form-control" name="stud_regno" value="${stud.stud_regno}"  >
									
					<label class='control-label'>전화번호</label>
				  	<input type="text" class="form-control" name="stud_tel"  value="${stud.stud_tel}" >							
						
						
					<label class='control-label'>휴대폰번호</label>
					<input type="text" class="form-control" name="stud_hp" value="${stud.stud_hp}"  >
					
					 <label class='control-label'>학과</label>
					 <c:if test="${stud.stud_dept=='DEPT1'}">
					 <input required type="text" class="form-control" name="dept_nm" value="멀티미디어공학과" >					 
					 </c:if>
					 <c:if test="${stud.stud_dept=='DEPT10'}">
					 <input required type="text" class="form-control" name="dept_nm" value="수학교육과" >					 
					 </c:if>
					 <c:if test="${stud.stud_dept=='DEPT2'}">
					 <input required type="text" class="form-control" name="dept_nm" value="컴퓨터공학과" >					 
					 </c:if>
					 <c:if test="${stud.stud_dept=='DEPT3'}">
					 <input required type="text" class="form-control" name="dept_nm" value="영어영문학과" >					 
					 </c:if>
					 <c:if test="${stud.stud_dept=='DEPT4'}">
					 <input required type="text" class="form-control" name="dept_nm" value="문예창작학과" >					 
					 </c:if>
					 <c:if test="${stud.stud_dept=='DEPT5'}">
					 <input required type="text" class="form-control" name="dept_nm" value="경영학과" >					 
					 </c:if>
					 <c:if test="${stud.stud_dept=='DEPT6'}">
					 <input required type="text" class="form-control" name="dept_nm" value="회계학과" >					 
					 </c:if>
					 <c:if test="${stud.stud_dept=='DEPT7'}">
					 <input required type="text" class="form-control" name="dept_nm" value="간호학과" >					 
					 </c:if>
					 <c:if test="${stud.stud_dept=='DEPT8'}">
					 <input required type="text" class="form-control" name="dept_nm" value="생활체육학과" >					 
					 </c:if>
					 <c:if test="${stud.stud_dept=='DEPT9'}">
					 <input required type="text" class="form-control" name="dept_nm" value="국어교육과" >					 
					 </c:if>
				
					 <label class='control-label'>현재학년</label>
					 <input required type="text" class="form-control" name="stud_grd"  value="${stud.stud_grd}"  >
					 <label class='control-label'>성별</label>
					 <div class="radio"  >
					      <label><input required type="radio" name="stud_gen" value="1">남자</label>
					      <label><input required type="radio" name="stud_gen" value="2">여자</label>					 	  
				     </div>
					 
					 
					 
					 
					</div>
					<div class="col-md-1 padding-0">
					</div>			 
				 <div class="col-md-5 padding-0">
					<label class='control-label'>이메일</label>
					<input type="text" class="form-control" name="stud_email" value="${stud.stud_email}" >										 

					 <label class='control-label'>계좌번호</label>
					 <input required type="text" class="form-control" name="stud_act_num" value="${stud.stud_act_num}"  >
					 <label class='control-label'>은행명</label>
					 <input required type="text" class="form-control" name="stud_bank" value="${stud.stud_bank}" >
					 <label class='control-label'>예금주</label>
					 <input required type="text" class="form-control" name="stud_ah" value="${stud.stud_ah}" >
					 <label class='control-label'>주소</label>
					 <input type="text" class="form-control" name="stud_addr" value="${stud.stud_addr}" >
					 <label class='control-label'>우편번호</label>
					 <input type="text" class="form-control" name="stud_zip"  value="${stud.stud_zip}">
					 <label class='control-label'>보호자 이름</label>
					 <input type="text" class="form-control" name="stud_guad_nm"  value="${stud.stud_guad_nm}">					 
					 <label class='control-label'>보호자 관계</label>
					 <c:if test="${stud.stud_guad_rel}=='1'">
					 <input type="text" class="form-control" name="stud_guad_rel" value="부" >					 
					 </c:if>
					 <c:if test="${stud.stud_guad_rel}=='2'">
					 <input type="text" class="form-control" name="stud_guad_rel" value="모" >					 
					 </c:if>
					 <label class='control-label'>보호자 핸드폰</label>
					 <input type="text" class="form-control" name="stud_guad_hp" value="${stud.stud_guad_hp}" >
					
				    </div>	  	 
</div>
</div>
</div>
<div class="col-md-2 ">
</div>


<div class="col-md-10">

	<div class="panel panel-default">
		<div class="panel-heading" style="background-color: #2196F3;  margin-top: 10px;">
			<h4 style="color: #fff; font-weight: bold; font-size: 20px;">신청사유</h4>
       		 </div> 
       	<div class="panel-body" style="font-size:16px;">       			
		<div class="box-v5 panel">
		<div class="panel-heading padding-0 bg-white border-none">	             
		<textarea required placeholder="신청사유를 적어주세요." name="scrappl_cause"></textarea>
		</div>
		</div>		
		</div>
</div>
		<input class="btn btn-outline btn-primary pull-right" type="submit" value="신청하기">	  	 
</div>

</form>
<!-- start: Javascript -->
<script type="text/javascript">
	$(document).ready(function() {
		$('input').iCheck({
			checkboxClass : 'icheckbox_flat-aero',
			radioClass : 'iradio_flat-aero'
		});
	});
</script>
<!-- end: Javascript -->		
