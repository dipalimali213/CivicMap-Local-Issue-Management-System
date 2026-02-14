<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, com.dips.model.Issue" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Issue Status</title>
</head>
<body>
    <h2>Update Issue Status</h2>

    <c:if test="${not empty message}">
        <p style="color:green;">${message}</p>
    </c:if>
    <c:if test="${not empty error}">
        <p style="color:red;">${error}</p>
    </c:if>

    <table border="1" cellpadding="10">
        <tr>
            <th>ID</th>
            <th>Contact</th>
            <th>Type</th>
            <th>Latitude</th>
            <th>Longitude</th>
            <th>Description</th>
            <th>Date</th>
            <th>Status</th>
            <th>Action</th>
        </tr>
        <%
            List<Issue> issues = (List<Issue>) request.getAttribute("issues");
            if (issues != null) {
                for (Issue issue : issues) {
        %>
        <form action="updateIssueStatus" method="post">
    <input type="hidden" name="id" value="${issue.id}">
    <select name="status">
        <option value="Pending" ${issue.status == 'Pending' ? 'selected' : ''}>Pending</option>
        <option value="In Progress" ${issue.status == 'In Progress' ? 'selected' : ''}>In Progress</option>
        <option value="Resolved" ${issue.status == 'Resolved' ? 'selected' : ''}>Resolved</option>
    </select>
    <input type="submit" value="Update">
</form>

        <%
                }
            }
        %>
    </table>
</body>
</html>
