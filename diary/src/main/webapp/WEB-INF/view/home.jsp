<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>Home</h1>
   <div>${loginMember.memberId}님 반갑습니다</div><br>
   <a href="${contextPath}/logout"><button type="button">로그아웃</button></a>
   <a href="${contextPath}/modifyPw"><button type="button">정보수정</button></a>   <br>   <br>   <br>
   <%-- <a href="${pageContext.request.contextPath}/removeMember?memberNo=${loginMember.memberNo}"><button type="button">회원탈퇴</button></a> --%> 
   <!-- 회원탈퇴는 마리아DB NO ACTION 변경 오류로 쿼리 등은 만들었으나 보류 -->
   
   
   <div><a href="${contextPath}/noticeList"><button type="button">공지사항</button></a></div>
   
   <!-- 캘린더 -->
   <div>
      ${calendarMap.targetYear}년
      ${calendarMap.targetMonth + 1}월
   </div>
   
      
   <table border="1">
      <tr>
         <td>일</td>
         <td>월</td>
         <td>화</td>
         <td>수</td>
         <td>목</td>
         <td>금</td>
         <td>토</td>
      </tr>
      <tr>
         <c:forEach var="i" begin="1" end="${calendarMap.totalTd}">
            <c:set var="d" value="${i-calendarMap.beginBlank}"/>
            <td>
               <c:if test="${d < 1 || d> calendarMap.lastDate}">
                  &nbsp;
               </c:if>
               <c:if test="${!(d < 1 || d> calendarMap.lastDate)}">
                  <a href="${contextPath}/scheduleByDay?targetYear=${calendarMap.targetYear}&targetMonth=${calendarMap.targetMonth+1}&targetDay=${d}">${d}</a>
               <c:forEach var="s" items="${scheduleList}">
                  <c:if test="${d == s.day}">
                 <div>${s.cnt}</div> 
                 <div>${s.memo}</div>               
                  </c:if>                  
               </c:forEach>
                  
               </c:if>
               
               <!-- 한 행 당 7열 -->
               <c:if test="${i<calendarMap.totalTd && i%7==0}">
                  </tr><tr>
               </c:if>
               
            </td>
         </c:forEach>      
      </tr>   
   </table>
         <div>
            <a href="${contextPath}/home?targetMonth=${calendarMap.targetMonth-1}&targetYear=${calendarMap.targetYear}"><button type="button">이전달</button></a>
            <a href="${contextPath}/home?targetMonth=${calendarMap.targetMonth+1}&targetYear=${calendarMap.targetYear}"><button type="button">다음달</button></a>
         </div>
   
</body>
</html> 