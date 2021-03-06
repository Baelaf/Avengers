<%@page import="com.avengers.db.dto.PerschdVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../common/profHelpDeskSide.jsp"%>

<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
<meta name='description'
	content='Open source JavaScript jQuery plugin for a full-sized, drag &amp; drop event calendar'>
<meta name='keywords'
	content='calendar, JavaScript, jQuery, events, drag and drop'>
<meta name='author' content='Adam Shaw'>
<meta name="msapplication-TileColor" content="#2b5797">
<meta name="msapplication-TileImage"
	content="https://fullcalendar.io/mstile-144x144.png">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src='${pageContext.request.contextPath}/resources/js/full_calender/jquery.min.js'></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="apple-touch-icon" sizes="57x57"
	href="https://fullcalendar.io/apple-touch-icon-57x57.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="https://fullcalendar.io/apple-touch-icon-114x114.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="https://fullcalendar.io/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="https://fullcalendar.io/apple-touch-icon-144x144.png">
<link rel="apple-touch-icon" sizes="60x60"
	href="https://fullcalendar.io/apple-touch-icon-60x60.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="https://fullcalendar.io/apple-touch-icon-120x120.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="https://fullcalendar.io/apple-touch-icon-76x76.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="https://fullcalendar.io/apple-touch-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="https://fullcalendar.io/apple-touch-icon-180x180.png">
<link rel="icon" type="image/png"
	href="https://fullcalendar.io/favicon-192x192.png" sizes="192x192">
<link rel="icon" type="image/png"
	href="https://fullcalendar.io/favicon-160x160.png" sizes="160x160">
<link rel="icon" type="image/png"
	href="https://fullcalendar.io/favicon-96x96.png" sizes="96x96">
<link rel="icon" type="image/png"
	href="https://fullcalendar.io/favicon-16x16.png" sizes="16x16">
<link rel="icon" type="image/png"
	href="https://fullcalendar.io/favicon-32x32.png" sizes="32x32">
<style>
ol, ul {
	margin-top: 10px;
	margin-bottom: 10px;
	list-style: none;
}

#calendar {
	max-width: 900px;
	margin: 0 auto;
}

#commonRightSide {
	margin-top: 50px;
}
</style>


<div class="col-md-10">
	<div class="panel panel-default">
		<!--  메뉴제목 -->
		<div class="panel-heading"
			style="background-color: #666666; margin-top: 0px;">
			<h4 style="color: #fff; font-weight: bold; font-size: 20px;">

				학사일정</h4>
		</div>
		<div class="panel-body" style="height: 800px; text-align: center;">

			<!-- 내용시작 -->
						<div class='two-col'>




							<div id='calendar'></div>
						</div>
					</div>
				</div>



				<script>
 
   $(function() {
      var id; 
      
      var todayDate = moment().startOf('day');
      var YM = todayDate.format('YYYY-MM');
      var YESTERDAY = todayDate.clone().subtract(1, 'day').format('YYYY-MM-DD');
      var TODAY = todayDate.format('YYYY-MM-DD');
      var TOMORROW = todayDate.clone().add(1, 'day').format('YYYY-MM-DD');

       
      $('#calendar').fullCalendar({
         header: {
            left: 'prev,today,next', 
            center: 'title', 
            right: '' 
         },
         defaultDate: new Date(), //캘린더 켜지면 화면상에 나오는 날짜
         editable: false, //마우스로 일정을 움직일 수 있음. 사용자는 캘린더를 보기만 하기 때문에 false
         eventLimit: false,//하루에 이벤트가 3개이상이면 more표시로 줄여주는 기능 다 보여줘야하기 때문에 false
         events: [
                  
                  <%List<PerschdVO> perschdList = (List<PerschdVO>)request.getAttribute("univschdList");%>
                  <%for(int i=0; i<perschdList.size();i++){
                     if(i>0) out.print(",");
                     PerschdVO perschdVO = perschdList.get(i);%>
           { 
              title: '<%=perschdVO.getPerschd_title()%>',
               start:'<%=perschdVO.getPerschd_start_date()%>',
               end:'<%=perschdVO.getPerschd_end_date()%>',
               content:'<%=perschdVO.getPerschd_cont()%>',
              time:'<%=perschdVO.getPerschd_date()%>'
           }
           
                <%System.out.println(perschdVO.getPerschd_end_date()+"!!!");
                  }%> 
      ],
         eventClick:function(event) {
            
            $.ajax({
               url  : 'univScheduleDetail',
               type : 'post',
               data : "perschd_title="+event.title,
               success : function(perschd){                  
               $('#perschd_num').val(perschd.perschd_num);
               $('#perschd_writer').val(perschd.perschd_writer);
               $('#perschd_title').val(perschd.perschd_title);
               $('#perschd_start_date').val(perschd.perschd_start_date);
               $('#perschd_end_date').val(perschd.perschd_end_date);
               $('#perschd_cont').val(perschd.perschd_cont);
               },
               error: function(){
                  alert("error");
               }
            })

            //모달불러오기 
            $(this).attr("data-toggle","modal");
            $(this).attr("data-target","#editSchedule");
            }
   });
      
         
      })
 
      
   function deleteSchd(){
	  univForm.method="post";
      univForm.action="univScheduleDelete";
      univForm.submit();
   }
      
   </script>

				<!-- 상세보기&수정 모달 -->

				<div class="modal fade" id="editSchedule">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title">일정 상세보기</h4>
							</div>
							<div class="modal-body">
								<div class="row">
									<div class="col-md-12">
										<div class="col-md-8 col-md-offset-2">
											<form action="univScheduleUpdate" method="POST"
												name="univForm">

												<ul>
													<input id="perschd_num" type="hidden" class="form-control"
														name="perschd_num" value="">
													<input id="perschd_writer" type="hidden"
														name="perschd_writer" value="" class="form-control">
													<li><label class='control-label'>title</label> <input
														id="perschd_title" type="text" class="form-control"
														name="perschd_title" value=""></li>
													<li><label class='control-label'>start date</label> <input
														id="perschd_start_date" type="text"
														name="perschd_start_date" value="" class="form-control"></li>
													<li><label class='control-label'>end date</label> <input
														id="perschd_end_date" type="text" name="perschd_end_date"
														value="" class="form-control"></li>
													<li><label class='control-label'>content</label> <input
														id="perschd_cont" type="text" name="perschd_cont" value=""
														class="form-control"></li>
												</ul>

												<!-- button -->
												<div class="col-md-12">
													<div class="modal-footer">
														<div class="col-md-8 col-md-offset-1">
															<button type="button" class="btn btn-default"
																data-dismiss="modal">Close</button>
															
														</div>
													</div>

												</div>


											</form>
										</div>



									</div>
								</div>
							</div>




						</div>
					</div>
				</div>

				<!-- 추가모달창 -->
				<div class="modal fade" id="addSchedule">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">

								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<div class="row">
									<div class="col-md-12">
										<div class="col-md-8 col-md-offset-2">
											<form
												action="${pageContext.request.contextPath }/professor/univScheduleInsert"
												method="POST">
												<ul>
													<input type="hidden" class="form-control"
														name="PERSCHD_NUM">

													<li><label class='control-label'>제목</label> <input
														type="text" class="form-control" name="PERSCHD_TITLE">
													</li>

													<li><input type="hidden" class="form-control"
														name="PERSCHD_WRITER">
													<li><label class='control-label'>시작일</label> <input
														type="date" class="form-control" name="PERSCHD_START_DATE">
													</li>

													<li><label class='control-label'>종료일</label> <input
														type="date" class="form-control" name="PERSCHD_END_DATE">
													</li>

													<li><label class='control-label'>내용</label> <input
														type="text" class="form-control" name="PERSCHD_CONT"></li>
												</ul>
										</div>

										<!-- footer -->
										<div class="col-md-12">
											<div class="modal-footer">
												<div class="col-md-8">
													<button type="button" class="btn btn-default"
														data-dismiss="modal">Close</button>
													<input type="submit" class="btn btn-primary">
												</div>
											</div>
										</div>
										</form>

									</div>

								</div>

							</div>

						</div>
					</div>
				</div>






			</div>
		</div>
	</div>



</div>



</div>
</div>





