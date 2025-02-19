<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<br/><br/>
<div style="position: absolute; padding: 3px; border: 0px solid #484848; border-radius:3px; left: 0px; top: 230px; width:97%;">
     <p align='center'>
            <div id="LoadingImage" align="center" style="display: none">
                <!-- <img src="img/InternetSlowdown_Day.gif" /> -->
                <img src="img/loading_small.gif" />
            </div>
     </p>
</div>
<div id="content" style="display: none">
	<input type="hidden" id="version_params" class="test_class" name="version_params" value='<%=request.getParameter("version")%>' />
  	<table class="grid_table" border=0>
 		<colgroup>
			 <col style="width: 150px; height=50px;">
			 <col style="width: 120px; height=50px;">
			 <col style="width: 60px; height=50px;">
			 <col style="width: 30px;  height=50px;">
			 <col style="width: 200px;  height=50px;">
			 <col style="width: 150px;  height=50px;">
			 <col style="width: 200px;  height=50px;">
			 <col style="width: 12%;   height=50px;">
			 <col style="width: 90px;  height=50px;">
			 <col style="width: 90px;  height=50px;">
		</colgroup>
		<thead>
			<tr height=50px;">
					<td align='center'><b>Top Cluster Alert</b></td>
					<td colspan='9'><div id="cluster_name" /></td>
			</tr>
		</thead>
		<tbody>
			<tr height=80px;" bgColor='white'>
			 	<td align='left' colspan='6'>
			 		&nbsp;<label id='cluster_health_alert'></label> Elasticsearch cluster status is <label id='status'></label>. <a href="javascript:alert('more');" id="unassigned_alert_message"></a>&nbsp;
			 		<br/>
			 		&nbsp;<label id='current_time'></label>
			 	</td>
				<td colspan='4' align="left"><label id="loading" /></td>
			</tr>
			<tr height=20px;" bgColor='white'>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
			</tr>
		</tbody>
	</table>
  	<table class="grid_table" border=0>
		<colgroup>
			 <col style="width: 150px; height=50px;">
			 <col style="width: 120px; height=50px;">
			 <col style="width: 60px; height=50px;">
			 <col style="width: 30px;  height=50px;">
			 <col style="width: 200px;  height=50px;">
			 <col style="width: 150px;  height=50px;">
			 <col style="width: 200px;  height=50px;">
			 <col style="width: 12%;   height=50px;">
			 <col style="width: 90px;  height=50px;">
			 <col style="width: 90px;  height=50px;">
		</colgroup>
		<thead>
			<tr height=50px;">
					<th><img src="img/icon-elasticsearch-bb.svg" width="30%">Elastic</th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th>Health: <label id='cluster_health'></label></th>
			</tr>
		</thead>
		<tbody>
			<tr height=150px;" bgColor='white'>
				<td align='center' valign='top'><br/><a href="#">Overview</a><br/>Version: <label id="elastic_version" /><br/>Uptime: <label id="elastic_uptime" /></td>
				<th></th>
				<th></th>
				<th></th>
				<td align='center' valign='top'><br/><a href="#n" onclick="loadCenterPage('search_monitoring/search_engine_node_list?version=<%=request.getParameter("version")%>', 'Y','검색엔진상태관리');"><div id='number_of_nodes' /></a>Disk Available: <label id="available_fs" /> / <label id="total_fs" />  (<label id="fs_percent" />)<br/>JVM Heap: <label id="heap_percent" />  (<label id="heap_used_in_bytes" /> / <label id="heap_max_in_bytes" />)</td>
				<th></th>
				<td align='center' valign='top'><br/><a href="#n" onclick="loadCenterPage('search_monitoring/search_engine_indices_list?version=<%=request.getParameter("version")%>', 'Y','검색엔진상태관리');"><div id='number_of_indices' /></a>Documents: <label id="number_of_doucuments" /><br/>Disk Usage: <label id="number_of_disk" /><br/><a href="#n" onclick="loadCenterPage('search_monitoring/search_engine_shards_info_list?version=<%=request.getParameter("version")%>', 'Y','검색엔진상태관리');">Primary Shards: <label id="number_of_primary_shards" /></a><br/>Replica Shards: <label id="number_of_replica_shards" /></td>
				<th></th>
				<th></th>
				<th></th>
			</tr>
		</tbody>
	</table>
	 <table class="grid_table" border=0>
		<colgroup>
			 <col style="width: 150px; height=50px;">
			 <col style="width: 120px; height=50px;">
			 <col style="width: 60px; height=50px;">
			 <col style="width: 30px;  height=50px;">
			 <col style="width: 200px;  height=50px;">
			 <col style="width: 150px;  height=50px;">
			 <col style="width: 200px;  height=50px;">
			 <col style="width: 12%;   height=50px;">
			 <col style="width: 90px;  height=50px;">
			 <col style="width: 90px;  height=50px;">
		</colgroup>
		<thead>
			<tr height=50px;">
				<th><img src="img/icon-kibana-bb.svg" width="30%">Kibana</th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th>Health: <img src="img/health-green.svg"> Yellow</th>
			</tr>
		</thead>
		<tbody>
			<tr height=150px;" bgColor='white'>
				<td align='center' valign='top'><br/><a href="#">Overview</a><br/>Version: 5.4.2<br/>Uptime: a month</td>
				<th></th>
				<th></th>
				<th></th>
				<td align='center' valign='top'><br/><a href="#">Instance: 3</a><br/>Connections: 10<br/>Memory Usage: 9.89%  (425MB / 4GB)</td>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
			</tr>
		</tbody>
	</table>
</div>
<!-- //#content -->

<script src="/monitoring/js/search_monitoring/search_engine_status_list.js"></script>

<style type="text/css">
    .dataTables_processing {
        top: 110px !important;
        z-index: 11000 !important;
    }
    
    td>table{
    	width:100% !important; 
    }
</style>