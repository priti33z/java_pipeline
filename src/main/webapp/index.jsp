<%@ page import="java.util.Random" %>
<%
    int myNumber = (int)(Math.random() * 100) + 1;
    String userNumberStr = request.getParameter("guess");
    String message = "";

    if (userNumberStr != null) {
        int userNumber = Integer.parseInt(userNumberStr);
        if (userNumber == myNumber) {
            message = "WOOHOO .. CORRECT NUMBER !!! My number was " + myNumber;
        } else if (userNumber > myNumber) {
            message = "Your number is too large";
        } else {
            message = "Your number is too small";
        }
    }
%>
<html>
  <body>
    <h2>Guess my number (1–100):</h2>
    <form>
      <input type="text" name="guess" />
      <input type="submit" value="Submit" />
    </form>
    <p><%= message %></p>
  </body>
</html>
