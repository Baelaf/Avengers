<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
  <!-- jQuery와 Postcodify를 로딩한다 -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
 
<div class="col-md-12" id="commonRightSide">
	<div class="panel panel-default">
		<div class="panel-heading" style="background-color: #CC0000;  margin-top: 10px;">
			<h4 style="color: #fff; font-weight: bold; font-size: 20px;">등록</h4>
		</div>
		<div class="panel-body" style="text-align: center;" >

			<div class="row">
  	<div class="col-md-12" style="margin-bottom:-30px;">
 		 <form name="insertProfessor"  method="post" action="${pageContext.request.contextPath }/admin/insertProfessor" enctype="multipart/form-data">
  		<div class="col-md-12" style="margin-top:30px;">
  		   <!-- 이미지 미리보기 -->
  		   				<div class="col-md-12 col-md-offset-1" style="margin-bottom:20px;">
			               <div class="filess" style="margin-bottom:20px;">
			                  <img  style="height:150px;width:130px; margin-left:50px; " alt="User Pic" src="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg"
			                     id="profile-image" class="img-circle img-responsive">
			                  <input style="width:100px;" id="profile-image-input"  accept="image/png, image/jpeg, image/gif" class="hidden" type="file">
			               </div>
              			</div>
              
               <div class="row" style="margin-bottom:20px;">
                <input type="hidden" name="prfs_num">
               	<div class="col-md-9 col-md-offset-1" style="margin-left:188px;">
               		<div class="col-md-5">
               		
               		<div class="col-md-12 " style="margin-left:20px;">
						<div class="form-group">
							  	<span class="input-group-btn">
								<input type="text" class="form-control" style="width:250px; margin-left:22px;" id="image-preview-filename" disabled="disabled">  	                   
	                   			</span>
						</div>
					</div>
				 
					</div>				
										<div class="col-md-4 form-group" style="margin-left:-400px;">
												<div class="btn btn-default image-preview-input">
						                           <input type="file" accept="image/png, image/jpeg, image/gif" name="prfs_pic"/>
						                           <span class="image-preview-input-title" >업로드</span>
						                        </div>
					   					</div>
			    </div>
	                   
				</div>
				
							
				
				</div>

						 
              
  		</div> 


		<div class="col-md-12" id="prof_inform">
				<div class="col-md-5">
					 <input type="hidden" name="prfs_num">
				<div class="col-md-12" style="margin-bottom:20px;">
						<div class="form-group">
							<label class="col-sm-4 control-label text-right">이름</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="prfs_nm" >
							</div>
						</div>
				</div>
				  
				<div class="col-md-12" style="margin-bottom:20px;">
						<div class="form-group">
							<label class="col-sm-4 control-label text-right">영문이름</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="prfs_eng_nm" >
							</div>
						</div>
				</div>

				<div class="col-md-12" style="margin-bottom:20px;">
						<div class="form-group">
							<label class="col-sm-4 control-label text-right">학과</label>
							<div class="col-sm-8">
								<select style="width:428.88px;" name="prfs_dept" class="selectpicker show-tick">
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
							</div>
						</div>
				</div>
				  
				<div class="col-md-12" style="margin-bottom:20px;">
						<div class="form-group">
							<label class="col-sm-4 control-label text-right">주민등록번호</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="prfs_regno" name="prfs_regno" >
							</div>
						</div>
				</div>
					 
				<div class="col-md-12" style="margin-bottom:20px;">
						<div class="form-group">
							<label class="col-sm-4 control-label text-right">생년월일</label>
							<div class="col-sm-8">
								<input id="prfs_bir" type="date" class="form-control" name="prfs_bir" >
							</div>
						</div>
				</div>
					 	   
				<div class="col-md-12" style="margin-bottom:20px;">
						<div class="form-group">
							<label class="col-sm-4 control-label text-right">전화번호</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="prfs_tel" >
							</div>
						</div>
				</div>	 
				
				<div class="col-md-12" style="margin-bottom:20px;">
						<div class="form-group">
							<label class="col-sm-4 control-label text-right">계좌번호</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="prfs_act_num" >
							</div>
						</div>
				</div>	 
					 
					</div>



					<div class="col-md-5">
					
					
					<div class="col-md-12" style="margin-bottom:20px;">
							<div class="form-group">
								<label class="col-sm-4 control-label text-right">은행명</label>
								<div class="col-sm-8">
									<input type="text" class="form-control" name="prfs_bank" >
								</div>
							</div>
					</div>
					
			 
					<div class="col-md-12" style="margin-bottom:20px;">
							<div class="form-group">
								<label class="col-sm-4 control-label text-right">예금주</label>
								<div class="col-sm-8">
									<input type="text" class="form-control" name="prfs_ah" >
								</div>
							</div>
					</div>
							 
					<div class="col-md-12" style="margin-bottom:20px;">
							<div class="form-group">
								<label class="col-sm-4 control-label text-right">우편번호</label>
								<div class="col-sm-8">
									<input type="text" class="form-control" name="prfs_zip" >
								</div>
							</div>
					</div>
							 
					<div class="col-md-12" style="margin-bottom:20px;">
							<div class="form-group">
								<label class="col-sm-4 control-label text-right">주소</label>
								<div class="col-sm-8">
									<input type="text" class="form-control" name="prfs_addr" >
								</div>
							</div>
					</div>
							 		 
					<div class="col-md-12" style="margin-bottom:20px;">
							<div class="form-group">
								<label class="col-sm-4 control-label text-right">휴대폰번호</label>
								<div class="col-sm-8">
									<input type="text" class="form-control" name="prfs_hp" >
								</div>
							</div>
					</div>		 
							 
					<div class="col-md-12" style="margin-bottom:20px;">
							<div class="form-group">
								<label class="col-sm-4 control-label text-right">이메일</label>
								<div class="col-sm-8">
									<input type="text" class="form-control" name="prfs_email" >
								</div>
							</div>
					</div>		  
		
					<div class="col-md-12" style="margin-bottom:20px;">
							<div class="form-group">
								<label class="col-sm-4 control-label text-right">비밀번호</label>
								<div class="col-sm-8">
									<input type="password" class="form-control" name="prfs_pw" >
								</div>
							</div>
					</div>		  
			 
					<div class="col-md-12" style="margin-bottom:20px;">
							<div class="form-group">
								<label class="col-sm-4 control-label text-right">성별</label>
								<div class="col-sm-8">
									<div class="radio" >
									<div class="col-md-6"><label><input id="male" type="radio" class="prfs_gen" name="prfs_gen" value="1">남자</label></div>
							      	<div class="col-md-3"><label><input id="female" type="radio" class="prfs_gen" name="prfs_gen" value="2">여자</label></div>
						   	  </div>
								</div>
							</div>
					</div>	
							 
					</div>
					<div class="col-md-2" style="margin-top:400px;">
					<input class="submit btn btn-danger" type="submit" value="등록하기">
					</div>
					
					
	  		</div>
				 
						
  
			  </div>
			</div>
  
      </form>
 	</div>
 
  


		</div>
	</div>
 
<script>
	$(function() {
		 
		//생년월일, 성별 자동입력
		 $("#prfs_regno").change(function(){
			    var prfs_regno = $("#prfs_regno").val().substring(0,6);
				var year = '19'+$("#prfs_regno").val().substring(0,2)+"-";
				var month = $("#prfs_regno").val().substring(2,4)+"-";
				var date =$("#prfs_regno").val().substring(4,6);
// 			    alert(year+month+date);
			    $("#prfs_bir").val(year+month+date);
			        
			    var gender = $("#prfs_regno").val().substring(7, 8);
// 			    alert(gender);
			       if(gender == '1' || gender == '3'){
				       $('#male').attr("checked","checked");
			       }else{
				       $('#female').attr("checked","checked");
			       }
			        
			    });
			 
		
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
   
   img {
      cursor:pointer;
   }
   .files-crw {
      width : 165px;
      height: 220px;
   }

 	 
 

.input-group .form-control:last-child, .input-group-addon:last-child {
    border-top-left-radius: 0;
    border-bottom-left-radius: 0;
}



 .btn-danger, .alert-danger, .badge-danger {
    color: #fff !important;
    border: none !important;
    background-color: #CC0000 !important;
  }
</style>

 
