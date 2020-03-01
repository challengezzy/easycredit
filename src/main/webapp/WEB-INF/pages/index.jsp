<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:include  page="/common/top.jsp"/>
<style type="text/css">
	.index_panel{height:266px;}
</style>
<body class="fix_top_nav_padding">
<div id="wrap" > 
  <jsp:include  page="/common/header.jsp"/>
  <div class="container">
    <div class="row"> 
      <div class="col-md-2 " style="heght:1000px;">
         <%@ include file="/common/left.jsp" %> 
      </div>
      <div class="col-lg-5">
      	
        <div class="panel  panel-default">
          <div class="panel-heading "> <a href="#" class="pull-right">更多>></a>
            <h3 class="panel-title"><i class="icon-flag color_red"></i> 待办事项</h3>
          </div>
          <div class="list-group index_panel" > 
         	<div class="list-group-item">暂无数据</div> 
          </div>
        </div>
      </div>
      <div class="col-lg-5">
        <div class="panel  panel-default">
          <div class="panel-heading "><a href="#" class="pull-right">更多>></a>
            <h3 class="panel-title "><i class="icon-bullhorn   color_green"></i> 系统公告</h3>
          </div>
          <ul class="list-group index_panel" id="accordion_a" >
           	  <li  class="list-group-item panel">暂无数据</li> 
          </ul>
        </div>
      </div>
      <div class="col-lg-10 clearfix">
        <div class="panel  panel-default">
          <div class="panel-heading "><a href="#" class="pull-right">更多>></a>
            <h3 class="panel-title"><i class="icon-time "></i> 操作记录</h3>
          </div>
          <div class=" table-responsive index_panel">
          <table class="table table-hover table-striped " style="margin-bottom:0;" >
            <thead>
              <tr>
                <th>操作模块</th>
                <th>字段</th>
                <th>原值</th>
                <th>新值</th>
                <th>记录时间</th>
              </tr>
            </thead>
            <tbody>
           	  <tr>
                <td colspan="5" class="text-center">暂无数据</td>
              </tr>
            </tbody>
          </table>
          </div>
        </div>
      </div>
      </div>
      
  </div>
</div>

<jsp:include  page="/common/footer.jsp"/>
 