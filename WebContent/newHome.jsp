<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<title>Bug-Information</title>
</head>
<body>
<div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Bug Details</h2></caption>
            <tr>
                <th>Bug</th>
                <th>Base</th>
                
                <c:forEach items="${branchs}" var="branch">		
                 <th><c:out value="${branch}"/></th>
     				</c:forEach>
            </tr>
            
            <c:forEach var="bug" items="${bugList}">
                <tr>
               
                    <td><c:out value="${bug.bugNo}" /></td>
                    <td><c:out value="${bug.base.bugNo}" /></td>
               
               
               
             <c:forEach items="${branchs}" var="branch">
             <td>
             
             
             <c:forEach items="${bug.childs}" var="child">
        
             <c:choose>
    <c:when test="${child.branchs.contains(branch)}">
        <c:out value="${child.bugNo}"/>
    </c:when>
    
    
       </c:choose>
			
			</c:forEach>
			
			
			
<c:forEach items="${bug.baseChilds}" var="bchild">
        
             <c:choose>
    <c:when test="${bchild.branchs.contains(branch)&& bchild.bugNo!=bug.bugNo}">
        <c:out value="${bchild.bugNo}"/>
    </c:when>
    
    
       </c:choose>
			
			</c:forEach>
			
<c:choose>
<c:when test="${bug.base.branchs.contains(branch)}">
       <c:out value="${bug.base.bugNo}" />
    </c:when>
    </c:choose>
					
			
			<c:choose>
<c:when test="${bug.branchs.contains(branch)}">
       <c:out value="${bug.bugNo}" />
    </c:when>
    </c:choose>
			
              </td> 
                 
             </c:forEach>
     			
                    </tr>
         </c:forEach>
    
		                         
            </table>
            </div>
            
           





     				


</body>
</html>