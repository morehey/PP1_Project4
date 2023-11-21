<%--
  Created by IntelliJ IDEA.
  User: junghwan
  Date: 11/14/23
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="com.example.*"%>
<%@ page import="java.io.File" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<%
  String filename = "";
  int sizeLimit = 15 * 1024 * 1024;

  String realPath = request.getServletContext().getRealPath("upload");
  File dir = new File(realPath);
  if (!dir.exists()) dir.mkdirs();

  MultipartRequest multpartRequest = null;
  multpartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());

  filename = multpartRequest.getFilesystemName("img");
%>

파일명 : <%=filename%><br />
<img src="${pageContext.request.contextPath }/upload/<%=filename%>">