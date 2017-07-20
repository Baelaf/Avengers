<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <!-- jQuery와 Postcodify를 로딩한다 -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>


<!-- Admin Header -->
<%@include file="common/topCategory.jsp"%>

<!-- Content -->
<div class="col-md-2" id="commonLeftSide">
   <!-- 테스트용 사이드 -->
<%@include file="common/admin_side.jsp" %>   
</div>
<div class="col-md-10" id="commonRightSide">

<script>
	$(function() {
	   //그림 클릭 시 업로드 창 띄워 업로드 후 미리보기
	   $('#profile-image').on('click', function() {
	      $('#profile-image-input').click();
	      
	      $("#profile-image-input").change(function (){     
	           
	           var file = this.files[0];
	           var reader = new FileReader();
	           // Set preview image into the popover data-content
	           reader.onload = function (e) {
	               $(".image-preview-input-title").text("변경");
	                $("#image-preview-filename").val(file.name);            
	               $("#profile-image").attr('src', e.target.result);
	           }        
	           reader.readAsDataURL(file);
	       });
	   });
	   
	   // 업로드 버튼으로 그림피일 업로드 후 미리보기
	   $(".image-preview-input input:file").change(function (){     
	        
	        var file = this.files[0];
	        var reader = new FileReader();
	        //Set preview image into the popover data-content
	        reader.onload = function (e) {
	            $(".image-preview-input-title").text("변경");
	            $("#image-preview-filename").val(file.name);            
	            $("#profile-image").attr('src', e.target.result);
	        }        
	        reader.readAsDataURL(file);
	    });
	 
	});
</script>
 
 
 

<script type="text/javascript">
 $("#postcodify").postcodify();
</script>
  
<style>
 
    .table-bordered>thead>tr>th {
	text-align: center;
	}
	
	div>.filess{
	margin-left:60px;width:130px; height:150px;
	}
	
	div>#profile-image{
    border: 1px solid gray;
    margin: 0 auto;
    height: 150px;
    width: 130px;
	}

 
	
	fieldset {
    min-width: 0;
    padding: 0;
    border: 2px solid #b5bdd0;
/*     width: 400px; */
    margin: 0 auto;
}
	
	
.checkbox label, .radio label {
    min-height: 20px;
    padding-left: 40px;
    padding-right: 10px;
    font-weight: 400;
    cursor: pointer;
}

 .image-preview-input {
    position: relative;
    overflow: hidden;
    margin: 0px;    
    color: #333;
    background-color: #fff;
    border-color: #ccc;    
   }
   .image-preview-input input[type=file] {
      position: absolute;
      top: 0;
      right: 0;
      margin: 0;
      padding: 0;
      font-size: 20px;
      cursor: pointer;
      opacity: 0;
      filter: alpha(opacity=0);
   }
   .image-preview-input-title {
       margin-left:2px;
   }
 
   img {
      cursor:pointer;
   }
   .files-crw {
      width : 165px;
      height: 220px;
   }

 .control-label{
/*  width : 100px; */
 }



.input-group .form-control:last-child, .input-group-addon:last-child {
    border-top-left-radius: 0;
    width: 300px;
    border-bottom-left-radius: 0;
}

	div#prof_inform{
		margin-top:50px;
	}

</style>

  
<div class="row">
  <div class="col-md-8 col-md-offset-2">
  	<div class="col-md-12">
  		
 		 <form name="insertProfessor"  method="post" action="${pageContext.request.contextPath }/admin/insertProfessor" enctype="multipart/form-data">
	<h2>교수 등록</h2>
  	
  		<div class="col-md-12" style="margin-top:30px;">
  		   <!-- 이미지 미리보기 -->
               <div class="filess" >
                  <img  style="height:150px;width:130px;" alt="User Pic" src="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg"
                     id="profile-image" class="img-circle img-responsive">
                  <input style="width:100px;" id="profile-image-input"  accept="image/png, image/jpeg, image/gif" class="hidden" type="file">
               </div>
              
              
               <label class='control-label'>이미지</label>
	                   <span class="input-group-btn">
	                   
	                   		<input type="text" class="form-control" style="width:230px;" id="image-preview-filename" disabled="disabled">
	                   		<div class="btn btn-default image-preview-input">
	                           <input type="file" accept="image/png, image/jpeg, image/gif" name="prfs_pic"/>
	                           <span class="image-preview-input-title">업로드</span>
	                        </div>
	                   </span>
              
  		</div> 


	<div class="col-md-12" id="prof_inform">
				<div class="col-md-5">
	

					  <input type="hidden" name="prfs_num">
					
					
					  <label class='control-label'>이름</label>
					  <input type="text" class="form-control" name="prfs_nm" >
					  
					  <label class='control-label'>영문이름</label>
					  <input type="text" class="form-control"  name="prfs_eng_nm">
		  		
				      <label class='control-label'>학과</label><br/>
					  <select name="prfs_dept" class="selectpicker show-tick">
						<option value="DEPT1">멀티미디어공학과</option> 
						<option value="DEPT2">컴퓨터공학과</option> 
						<option value="DEPT3">영어영문학과</option> 
						<option value="DEPT4">문예창작학과</option> 
						<option value="DEPT5">경영학과</option> 
						<option value="DEPT6">회계학과</option> 
						<option value="DEPT7">간호학과</option> 
						<option value="DEPT8">생활체육학과</option> 
						<option value="DEPT9">국어교육과</option> 
						<option value="DEPT10">수학교육과</option> 
					 </select>
				<br>
				 
				
					<label class='control-label'>주민등록번호</label>
				  	<input type="text" class="form-control" name="prfs_regno"  >
				
					<label class='control-label'>생년월일</label>
					<input type="date" class="form-control" name="prfs_bir">
					
					<label class='control-label'>전화번호</label>
				  	<input type="text" class="form-control" name="prfs_tel"  >
				
					<label class='control-label'>계좌번호</label>
					<input type="text" class="form-control" name="prfs_act_num"  >
					
					</div>


					
					<div class="col-md-5 col-md-offset-1">
					<label class='control-label'>은행명</label>
					<input type="text" class="form-control" name="prfs_bank"  >
					
					<label class='control-label'>예금주</label>
					<input type="text" class="form-control" name="prfs_ah"  >

					<label class='control-label'>우편번호</label>
					<input type="text" class="form-control" name="prfs_zip"  >
					
					 <label class='control-label'>주소</label>
     				 <input type="text" class="form-control" name="prfs_addr"  >
					
					 <label class='control-label'>휴대폰번호</label>
					 <input type="text" class="form-control" name="prfs_hp"  >

					 <label class='control-label'>이메일</label>
					 <input type="text" class="form-control" name="prfs_email"  >

					 <label class='control-label'>비밀번호</label>
					 <input type="text" class="form-control" name="prfs_pw"  >
					
					 <label class='control-label'>성별</label>
					 <div class="radio" >
					      <label><input type="radio" name="prfs_gen" value="1">남자</label>
					      <label><input type="radio" name="prfs_gen" value="2">여자</label>
				    </div>
				    
				    </div>
				</div>
	  	</div>
				 
				<div class="col-md-12 input-group">
					<div class="col-md-4 col-md-offset-8">
		 			<input type="submit" value="등록하기">
				</div>
  		</div> 
  
  	</div>
  </div>
</div>
  
      </form>
 </div>
