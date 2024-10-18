<%@ page import="java.io.BufferedReader, java.io.InputStreamReader, java.io.IOException" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>SSH 명령어 실행</title>
</head>
<body>
    <h2>SSH 명령어 실행</h2>
    <form method="post" action="sshCommand.jsp">
        <label for="remoteCommand">원격 명령어:</label>
        <input type="text" id="remoteCommand" name="remoteCommand" placeholder="ex) ls, cat /etc/passwd" size="50" />
        <br/><br/>
        <label for="remoteIp">원격 서버 IP:</label>
        <input type="text" id="remoteIp" name="remoteIp" placeholder="ex) 1.1.1.1" size="20" />
        <br/><br/>
        <label for="sshUser">SSH 사용자:</label>
        <input type="text" id="sshUser" name="sshUser" placeholder="ex) ubuntu" size="20" />
        <br/><br/>
        <button type="submit">실행</button>
    </form>

    <h3>명령어 실행 결과:</h3>
<h4>test</h4>
    <pre>
    <%
        String remoteCommand = request.getParameter("remoteCommand");
        String remoteIp = request.getParameter("remoteIp");
        String sshUser = request.getParameter("sshUser");

        if (remoteCommand != null && !remoteCommand.trim().isEmpty() &&
            remoteIp != null && !remoteIp.trim().isEmpty() &&
            sshUser != null && !sshUser.trim().isEmpty()) {

            String pemKeyPath = "../DB-key.pem"; // key.pem 파일의 상대 경로

            try {
                // SSH 명령어 실행
                ProcessBuilder builder = new ProcessBuilder(
                    "bash", "-c",
                    "ssh -i " + pemKeyPath + " " + sshUser + "@" + remoteIp + " '" + remoteCommand + "'"
                );

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
            out.println("명령어, 원격 IP, SSH 사용자를 입력해주세요.");
        }
    %>
    </pre>
</body>
</html>
