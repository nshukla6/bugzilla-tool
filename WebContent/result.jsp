<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>bug</title>
</head>
<body>
 


<div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Bug Details</h2></caption>
            <tr>
                <th>Bug</th>
                <th>Files Commited</th>
                <th>Branch-Files</th>
                <th>Parent</th>
                <th>Childs</th>
            </tr>
            <c:forEach var="bug" items="${bugList}">
                <tr>
                    <td><c:out value="${bug.bugNo}" /></td>
                    <td><c:out value="${bug.filesCount}" /></td>
     				
     				<td><c:out value="${bug.branchFilesMap}" /></td>
					
					
					
                    <td><c:out value="${bug.isParent()}" /></td>
                    
                    
                    
                    <td><c:forEach items="${bug.childs}" var="child">
           				
           				Bug <c:out value="${child.bugNo}"/><br>
           				Branch-files <c:out value="${child.branchFilesMap}"/><br>
           			    
           				
     				</c:forEach>
     				</td>
                    
                    
                    
                </tr>
            </c:forEach>
        </table>
    </div>
   

</body>
</html>