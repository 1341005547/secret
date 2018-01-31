<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%String path=request.getContextPath(); %>
<!DOCTYPE html>
<html>

<head>
   <jsp:include page="../head.jsp"></jsp:include> 
</head>
<body class="hold-transition skin-blue sidebar-mini">


  

  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        申请详情
        <small>Application details</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">申请管理</a></li>
        <li class="active">我的申请</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-6">
           <h3 class="box-title">申请详情</h3>

            <table width="402" >
              <tr>
                <td width="152" height="40">申请人：</td>
                <td width="234">${UUser.uName } &nbsp;${UUser.professionalName }</td>
              </tr>
              <tr>
                <td height="40">申请时间：</td>
                <td><fmt:formatDate pattern="yyyy-MM-dd" value="${APPLY.aCreateTime}" type="time"/></td>
              </tr>
               <tr>
                <td height="40">申请类型：</td>
                <td>${APPLY.aName }</td>
              </tr>
              <tr>
                <td height="40">申请事件：</td>
                <td>${APPLY.aEven }</td>
              </tr>
              <c:if test="${APPLY.aName=='请假' }">
              	<tr>
                	<td height="40">请假时间：</td>
                	<td>${APPLY.aLeaveTime }</td>
              	</tr>
              </c:if>
              <c:if test="${APPLY.aName=='报销' }">
              	<tr>
                	<td height="40">报销项：</td>
                	<td>${APPLY.cdName }</td>
              	</tr>
              	<tr>
                	<td height="40">报销金额：</td>
                	<td>${APPLY.aDPrice } ￥</td>
              	</tr>
              	<tr>
                	<td height="40">报销说明：</td>
                	<td>${APPLY.aDExplain }</td>
              	</tr>
              </c:if>
               <c:if test="${APPLY.aName=='调度' }">
              	<tr>
                	<td height="40">调度前部门  职位：</td>
                	<td>${APPLY.dName } ${APPLY.pName }</td>
              	</tr>
              	<tr>
                	<td height="40">调度后部门 职位：</td>
                	<td>${APPLY.disdName } ${APPLY.dispName }</td>
              	</tr>
              	<tr>
                	<td height="40">调度时间：</td>
                	<td><fmt:formatDate pattern="yyyy-MM-dd" value="${APPLY.dcTime }" type="time"/></td>
              	</tr>
              </c:if>
               <tr>
                <td height="40">申请状态：</td>
                <td>${APPLY.aState }</td>
              </tr>
              <tr>
                <td height="40">申请意见：</td>
                <td>望领导批准</td>
              </tr>
               
            </table>
            <br/>
   
      <input type="button" name="Submit" onclick="javascript:history.back(-1);" value="返回列表">   
      
      </div>   
    </div>
    </section>
    <!-- Main content -->
     <section class="content">
      <div class="row">
        <div class="col-md-6">
           <h3 class="box-title">申报审核</h3>
            <div id="contact_form">
               <form method="post" name="contact" action="result_applyAdd">
                 <label for="email">审核人：</label>
                 <input type="text" id="title" class="input_field" value="${user.uName }" readonly="readonly" />
                    <em style="color:#F00">&nbsp;*</em>
                 <div class="cleaner h10"></div>
                 <label for="email">审核建议：</label>
                 <textarea id="text" rows="0" cols="0" class="required" name="rAOpinion"></textarea>
                 	<em style="color:#F00">&nbsp;*</em>
                <div class="cleaner h10"></div>         
                <label for="email">审核操作：</label>
                    <select name="rAResult" class="required input_field">
                      <option selected="selected">-请选择-</option>
                      	<option value="通过">通过</option>
                      	<option value="付款">付款</option>
                        <option value="打回">打回</option>
                        <option value="拒绝">拒绝</option>
                    </select><em style="color:#F00">&nbsp;*</em>
                    <div class="cleaner h10"></div>
               <input type="hidden"  name="applydName" value="${APPLY.dName }"/>
               <input type="hidden"  name="applydisdName" value="${APPLY.disdName }"/>
               <input type="hidden"  name="applytype" value="${APPLY.aName }">
               <input type="hidden"  name="aId" value="${APPLY.aId }"/>             
               <input type="hidden" name="rADealUser" value="${user.uId }"/>
               <input type="hidden"name="aDPrice" value="${APPLY.aDPrice }">
        		<input type="hidden"name="processId" value="${APPLY.processId} "/>
               <input type="submit" value="提交" id="submit" name="submit" class="submit_btn float_l" />
               <input type="reset" value="重置" id="reset" name="reset" class="submit_btn float_r" />
              </form>
           </div>   
      		</div>   
    	</div>
    </section>
</div>
 <jsp:include page="../foot.jsp"></jsp:include> 
</body>
</html>
