<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%String path=request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
 
 <jsp:include page="../../head.jsp"></jsp:include> 

  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header" style="margin-top: 55px">
      <h1>
        报销管理
        <small>To submit an expense account management</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Charts</a></li>
        <li class="active">Flot</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <!-- interactive chart -->
          <div class="box box-primary">


            <div class="box-header with-border">

              <i class="fa fa-bar-chart-o"></i>

              <h3 class="box-title">添加报销单</h3>

           
            </div>
            <div class="box-body">
              <table width="90%" border="0" cellspacing="0" cellpadding="0" class="addform-base">
                            <tr>
                                <td>*填报人：</td>
                                <td><s:property value="#session.employee_name"/></td>
                                <td>*填报时间：</td>
                                <td><input type="text" id="status" name="" value="<%=(new java.util.Date()).toLocaleString()%>"
                                     readonly="readonly"  /></td>
                            </tr>
                            <tr>
                                <td>*总金额：￥</td>
                                <td><input type="text" id="totalAccount" name="claimVoucher.total_Account" value=""/></td>
                                <td>*状态：</td>
                                <td><input type="text" id="status" name="claimVoucher.status" value="新创建"
                                        readonly="readonly" /></td>
                            </tr>
                            <tr>
                                <td colspan="4"><span class="notice" id="noctice">*</span></td>
                            </tr>
                        </table>
                        <table id="myTable" width="90%" border="0" cellspacing="0" cellpadding="0" class="addform-base">
                    <tr>
                        <td width="30%">项目类别</td>
                        <td width="30%">项目金额</td>
                        <td width="30%">费用说明</td>
                        <td width="10%">操作</td>
                    </tr>
                </table>
                <table id="detailTable" width="90%" border="0" cellspacing="0" cellpadding="0" class="addform-base">
                    <tr>
                        <td width="30%">
                            <select name="detailList.item" id="item">
                                <c:forEach items="${category_dispatchs }" var="category_dispatch">
                                	<option value="城际交通费" id="${category_dispatch.cDId }">${category_dispatch.cDName }</option>
                               
                                </c:forEach>
                            </select>
                        </td>
                        <td width="30%"><input type="text" name="detailList.account" id="account" /><span class=notice>*</span></td>
                        <td width="30%"><input type="text" name="detailList.des" id="desc" /><span class=notice>*</span></td>
                        <td width="10%"><img  src="<%=path %>/static/dist/images/add.gif" width="16" height="16" id="AddRow"/></td>

                    </tr>
                </table>
                        <table>
                            <tr>
                                <td>*事由：</td>
                                <td colspan="3"><textarea rows="5" cols="66" name="claimVoucher.event"
                                                id="event" style="resize:none"></textarea>
                                </td>
                            </tr>
                            <tr align="center" colspan="4">
                                <td>
                                    &nbsp; 
                                </td>
                                <td >
                                <input type="button" id="1" name="1" value="保存" onclick="submitClaimVoucher('保存')" class="submit_01"/>
                                    <input type="button" id="2" name="2" value="提交" class="submit_01"
                                        onclick="submitClaimVoucher('提交')" />
                                </td>
                            </tr>
                        </table>
            </div>


            <!-- /.box-body-->
          </div>
          <!-- /.box -->

        </div>
        <!-- /.col -->

      </div>
      <!-- /.row -->

      
 <!-- /.box-header -->
            <div class="box-body">
            <h3 class="box-title">报销单草稿箱</h3>
              <form action="#" name="claimForm">
              <input type="hidden" name="claimVoucher.create_sn" value="${sessionScope.employee_sn}"/>
              <input type="hidden" name="claimVoucher.next_deal_sn" value="${sessionScope.depertmentManager.sn }"/>
              <input type="hidden" id="rowNumber" name="rowNumber" value=""/>
                
                <table id="example1" class="table table-bordered table-striped" cellpadding="0" cellspacing="0" border="1px">
              <!-- 遍历循环传递数据 -->
              <!-- ============表头============= -->


                <thead>
                <tr>
                  <th width="80" align="left"><input id="chk_SelectALL" type="checkbox" />全选</th>
                  <th>申请编号</th>
                  <th>申请人</th>
                  <th>申请时间</th>
                  <th>类型</th>
                  <th>状态</th>
                  <th>操作</th>
                </tr>
                </thead>
               <tbody>
                <tr>
                <td><input type="checkbox" name="selectSub" /></td> 
                  <td>Trident</td>
                  <td><a href="applyexamine.jsp">Internet Explorer 4.0 </a></td>
                  <td>Win 95+</td>
                  <td> 4</td>
                  <td>X</td>
                  <td><a href="#" class="more">提交</a>&nbsp;<a href="applyedit" class="more">编辑</a>&nbsp;<a href="#" class="more">删除</a></td>
                </tr>
                <tr>
                <td><input type="checkbox" name="selectSub" /></td> 
                  <td>Trident</td>
                  <td><a href="applyexamine">Internet Explorer 5.0 </a></td>
                  <td>Win 95+</td>
                  <td>5</td>
                  <td>C</td>
                  <td><a href="#" class="more">提交</a>&nbsp;<a href="applyedit" class="more">编辑</a>&nbsp;<a href="#" class="more">删除</a></td>
                </tr>
                <tr>
                <td><input type="checkbox" name="selectSub" /></td> 
                  <td>Trident</td>
                  <td><a href="applyexamine">Internet Explorer 5.5 </a></td>
                  <td>Win 95+</td>
                  <td>5.5</td>
                  <td>A</td>
                  <td><a href="#" class="more">提交</a>&nbsp;<a href="applyedit" class="more">编辑</a>&nbsp;<a href="#" class="more">删除</a></td>
                </tr>
             
               
                </tbody>


              </table>
              </form>


             <div class="row">
              <div class="col-sm-5">
                <div class="dataTables_info" id="example1_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div>
              </div>
              <div class="col-sm-7">
                <div class="dataTables_paginate paging_simple_numbers" id="example1_paginate">
                  <ul class="pagination">
                    <li class="paginate_button previous disabled" id="example1_previous">
                      <a href="#" aria-controls="example1" data-dt-idx="0" tabindex="0">Previous</a>
                    </li>
                    <li class="paginate_button active"><a href="#" aria-controls="example1" data-dt-idx="1" tabindex="0">1</a></li>
                    <li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="2" tabindex="0">2</a></li>
                    <li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="3" tabindex="0">3</a></li>
                    <li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="4" tabindex="0">4</a></li>
                    <li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="5" tabindex="0">5</a></li>
                    <li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="6" tabindex="0">6</a></li>
                    <li class="paginate_button next" id="example1_next">
                      <a href="#" aria-controls="example1" data-dt-idx="7" tabindex="0">Next</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
             </div>
       

       
     
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->

  </div>
   <jsp:include page="../../foot.jsp"></jsp:include> 
<script type="text/javascript">
        $(function () {
//表单提交校验
    
      //$("#myTable tr").eq(0).hide();  
      $("form[name='claimForm']").submit(function(){
        alert("fadfafa");

        //判断是否加入了问题 
        if($("#rowNumber").val()<1){
          //$.messager.defaults={ok:"确定"};$.messager.alert("提示信息",$("#rowNumber").val());
          $("#notice").text("* 添加报销单的明细，至少一条 ！");
          return false;
        } 
        $("#notice").text("*");
        for(var s=0;s<$("#rowNumber").val();s++){
          $("#account"+s).next(".notice").text("*");
          $("#desc"+s).next(".notice").text("*");
          if(isEmpty($("#account"+s).val())){
            $("#account"+s).next(".notice").text("* 金额不能为空  ！");
            return false;
          }   
          if(isEmpty($("#desc"+s).val())){
            $("#desc"+s).next(".notice").text("* 金额不能为空  ！");
            return false;
          }   
                
        }
        $(".buttons").hide();
        return true;
      }); 


            $("#AddRow").click(function(){      
                var tr=$("#myTable tr").eq(0).clone();
                ++i;
                var j=i-1;
                var item = $("#item").val();
                var account = $("#account").val();
                totalAccount=parseFloat(totalAccount)+parseFloat(account);
                var desc = $("#desc").val();
                tr.find("td").get(0).innerHTML="<input  name=detailList["+j+"].item id=item"+j+" type=hidden value="+item+" />"+item;
                tr.find("td").get(1).innerHTML="<input  name=detailList["+j+"].account id=account"+j+"  type=hidden value="+account+" />"+account;
                tr.find("td").get(2).innerHTML="<input  name=detailList["+j+"].des  id=desc"+j+" type=hidden value="+desc+" />"+desc;       
                tr.find("td").get(3).innerHTML="<input type=button name=DelRow"+j+" id=DelRow"+j+" onclick=delRow("+j+") value="+'删除'+" />";
                tr.find("td").get(3).innerHTML="<img src=<%=path %>/static/dist/images/delete.gif width=16 height=16 id=DelRow"+j+" onclick=delRow("+j+") />";
                tr.show();
                tr.appendTo("#myTable");
                //传递一共添加多少问题 
                rowNumber=i;
                $("#account").attr("value","");
                $("#desc").attr("value","");
                $("#totalAccount").attr("value",totalAccount);
        
            });
        });
        var i=0;
        var rowNumber=0;
        var totalAccount = 0;
        function delRow(id){    
            var account = $("#account"+id).val();
            $("#myTable tr").eq(id+1).remove();
            var rowNumber=$("#rowNumber").val();
                for(var s=id+1;s<rowNumber;s++){
                $("#item"+s).attr("name","detailList["+(s-1)+"].item");
                $("#item"+s).attr("id","item"+(s-1));
                $("#account"+s).attr("name","detailList["+(s-1)+"].account");
                $("#account"+s).attr("id","account"+(s-1));
                $("#desc"+s).attr("name","detailList["+(s-1)+"].desc");
                $("#desc"+s).attr("id","desc"+(s-1));       
                var js="delRow("+(s-1)+");";
                var newclick=eval("(false||function (){"+js+"});");
                $("#DelRow"+s).unbind('click').removeAttr('onclick').click(newclick);
                $("#DelRow"+s).attr("id","DelRow"+(s-1));                   
                }
            $("#rowNumber").attr("value",rowNumber-1);
            --i;
            totalAccount=parseFloat(totalAccount)-parseFloat(account);
            $("#totalAccount").attr("value",totalAccount);
        }
        function submitClaimVoucher(action){
        if(!confirm("确定"+action+"报销单吗")) return;
        if (action == '保存'){
          document.claimForm.status.value = "新创建";
        }else{
          document.claimForm.status.value = "已提交";
        }
        
        document.claimForm.submit();
          
     }
    </script>

</body>
</html>
