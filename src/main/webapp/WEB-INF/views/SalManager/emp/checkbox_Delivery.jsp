<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
	table{text-align: center;}/*table ���� ��� �����ϱ� ���ؼ�  */
</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
List���� ���õ� ���� �Ѿ���� ������
<script type="text/javascript" 
    	src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script>
   $(document).ready(function(){
	   //�ֻ�� üũ�޽� Ŭ��
	   $("#checkall").click(function(){
		   //Ŭ���Ǿ�����
		   if($("#checkall").prop("checked")){
			   //input��ũ�� name�� chk �� ��ũ���� ã�Ƽ� ckecked �ɼ��� true�� ����
			   $("input[type=checkbox]").prop("checked",true);
			   //Ŭ���� �ȵ�������
		   }else{
			   //input�±��� name�� chk�� �±׵��� ã�Ƽ� checked �ɼ��� false�� ����
			   $("input[type=checkbox]").prop("checked",false);
		   }
	   });	   
	   
	   $("#chk0").click(function(){
		   if($("#chk0").prop("checked") == true) {
		   	  $("td[name=seltext0]").append('<input type="text" name="sali0">');
		   }
		   else{
			  $("input[name=sali0]").remove();
		   }
	   });
   });
   
   
  
   
 /*   for(var i =0; i<${csize}; i++) {
	  $("td[name=seltext]").remove;
	   
	  $("td[name=seltext]").append('<input type="text" name="seltext">');
   } */
   
   
 
	
   
</script>


<p><!--������ db ���� �ҷ��;ߵǴµ� �ѹ��� �ҷ��ͼ� ���ǹ� ���� ������ �÷��� �ߴµ� db�� ������ ��� ��������
	�׸��� db �Ȱ�ġ�� �ٷ� ������ �´ٰ� �ѵ� �ش��ȣ�� ���� �÷����� ������ �;��ϴµ�  �׷����� �����ִ� ����� ����ؾ����ݾ�.  -->
	<!--��Ʈ�ѿ� ���� Ǫ���� �װ� insert �ϰ� �װ� ���⿡ �̾ƿ��°ǵ� db���� ��� �Ҳ���  -->
		        
	
	
     
        <table >
        	<tr>
        		<td><input type="checkbox" id="checkall"></td>
        		<td width=""></td>
        		<td width="180"></td>
        		<td width="280">�޿�</td> 
        		<td width="250">�����</td>
        		<td width="260">�Ĵ�</td>
        		<td width="258">����������</td>
        		<td width="255">��å����</td>
        	</tr>
        	 
        	 
        	 	
        	 	<table border="1">
        	 		<c:forEach var="checkbox" items="${checkbox}" varStatus="status"><!--var="���� �����ִ� �̸��ε� �����̸����� �������̳�" items="��Ʈ�� addObject�� Ű��" -->       	 	
		        	 	<tr>
			        		<td><input type="checkbox" id="chk${status.index}"/></td>
			        		<td width="100" >${checkbox.boardNum}</td>
			        		<td width="180" >${checkbox.boardName}</td>
			        		<td width="391" name="seltext${status.index}">${checkbox.sempSal}</td>
			        		<td width="391">${checkbox.sempTamt}</td>
			        		<td width="391">${checkbox.sempFdex}</td>
			        		<td width="391">${checkbox.sempCmc}</td>
			        		<td width="391">${checkbox.srnkRamt}</td>
			        	</tr>
		        	 </c:forEach>
        	 	</table>
        </table>
       
    <p>

<p>

   <input type="reset" name="" value="�ʱ�ȭ">
   <input type="submit" name="" value="ýũ�Ȱ� ���ֱ�">
	
       
    
    
    
    

	

</body>
</html>