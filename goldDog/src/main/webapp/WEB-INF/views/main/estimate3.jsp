<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en"><head>
    <meta charset="UTF-8">
	
	 <style>
	.fa-star:before {
    content: "\f005";
    color: #48c1bd;
	}
	.fa-vcard:before, .fa-address-card:before {
    color: #6b6b6b;
	}

	</style>
</head>
	
	 
<body>
		<div>
		<jsp:include page="../header.jsp"/>
		</div>
		
	<!--  헤더 END -->
	 <div class="container">
	   </br></br></br></br></br></br></br></br>
	   <div class="row mb-5">
                <div class="col-md-8">
                
                  <div class="card mb-3">
                    <div class="row g-0">
                      <div class="col-md-4">
                        <img class="card-img card-img-left" src="/resources/serverImg/${clientDog.d_img}" width="150" height="150"/>
                      </div>
                      <div class="col-md-8">
                        <div class="card-body">
                          <h5 class="card-title">견적서</h5>
                          <p class="card-text">이 름 : ${clientDog.d_name} </p> 
                          <p class="card-text">나 이 : ${clientDog.d_age} </p> 
                          <p class="card-text">성 별 : ${clientDog.d_gender} </p> 
                          <p class="card-text">종 류 : ${clientDog.d_type} </p> 
                          <p class="card-text">무 게 : ${clientDog.d_weight} </p> 
                        </div>
                      </div>
                    </div>
                  </div>
                  
	             
                <div class="card mb-3">
	                 <div class="card-body">
	                   <p class="card-text" ><i class="fa fa-star fa-lg " aria-hidden="true"></i>
	                   		원하는 예약 날짜 : ${estimate.e_date}
	                   </p>
	                 </div>
	             </div>
	             
                <div class="card mb-3">
	                 <div class="card-body">
	                   <p class="card-text" ><i class="fa fa-star fa-lg " aria-hidden="true"></i>
	                   		원하는 서비스 : ${estimate.e_service}
	                   </p>
	                 </div>
	             </div>
	             
                <div class="card mb-3">
	                 <div class="card-body">
	                   <p class="card-text" ><i class="fa fa-star fa-lg " aria-hidden="true"></i>
	                   		출장시 주의사항 
	                   </p>
	                   	<textarea class="form-control" rows="3" name="e_note" readonly>${estimate.e_note}</textarea>
	                 </div>
	             </div>
                </div>
                
                
                
                <div class="col-md-4">
                   <div class="card" style="height:602px;">
                          <div class="card-header">
                              <strong class="card-title text-center" >결제 명세서</strong>
                          </div>
                          <div class="card-body">
                              <!-- Credit Card -->
                              <div id="pay-invoice">
                                  <div class="card-body">
                                  	<form action="">
                                  		<div class="row">
                                  			<div class="col-12">
	                                          <div class="form-group">
	                                              <label for="cc-payment" class="control-label mb-1">기본금액</label>
	                                              <input id="cc-payment" name="cc-payment" type="text" class="form-control" aria-required="true" aria-invalid="false" value="${trainer.t_price}" readonly>
	                                          </div>
	                                      </div>
                                          </div>
                                          <br/><br/><br/>
                                          <div class="row">
                                           <div class="col-6">
		                                          <div class="form-group has-success">
		                                              <label for="cc-name" class="control-label mb-1">추가 사유</label>
		                                              <input id="cc-payment" name="cc-payment" type="text" class="form-control" aria-required="true" aria-invalid="false" value="${trainer.t_price}" >
		                                          </div>
	                                          </div>
	                                          <div class="col-6">
		                                          <div class="form-group has-success">
		                                              <label for="cc-name" class="control-label mb-1">추가 금액(원)</label>
		                                              <input id="cc-payment" name="cc-payment" type="text" class="form-control" aria-required="true" aria-invalid="false" value="${trainer.t_price}" >
		                                          </div>
	                                          </div>
                                          </div>
                                          <br/><br/><br/>
                                          <div class="row">
	                                  		  <div class="col-12">
		                                          <div class="form-group">
		                                              <label for="cc-payment" class="control-label mb-1">최종 금액</label>
		                                              <input id="cc-payment" name="cc-payment" type="text" class="form-control" aria-required="true" aria-invalid="false" value="${trainer.t_license}" readonly>
		                                          </div>
	                                          </div>
                                          </div>
                                          
                                          <div class="row">
	                                          	<div class="col-lg-6">
	                                               <button id="dogCheck" type="submit" class="btn btn-lg btn-info btn-block">
	                                                  <span id="payment-button-amount">결제</span>
	                                              </button>
   		                                       </div>
	                                          	<div class="col-lg-6">
	                                               <button id="dogCheck"  class="btn btn-lg btn-danger btn-block">
	                                                  <span id="payment-button-amount">견적 취소</span>
	                                              </button>
	                                          </div>
                                          </div>
                                      </form>
                                  </div>
                              </div>
                          </div>
              			</div>
             			</div>
              
              
          </br></br></br></br></br></br></br></br>
          	</div><!--/.row-->
          </div><!--/.con-->
	


 <%@ include file="../footer.jsp" %>
 
	<script type="text/javascript">
		$(document).ready(function(){
		
		
		</script>
	






