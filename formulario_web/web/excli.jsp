<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir clientes</title>
    </head>
    <body>
        <%
            String cpf;
            cpf = request.getParameter("cpf");
            
                //Conectar com o banco de dados
                Connection conecta; // Classe utilizada para se conectar com obanco de dados 
                PreparedStatement st;
                Class.forName("com.mysql.cj.jdbc.Driver");
                conecta = DriverManager.getConnection("jdbc:mysql://localhost:3306/controleclientes", "root", "admin");
                
                // Exclui clientes da tabela
                st = conecta.prepareStatement("DELETE FROM clientes WHERE cpfcli=?");
                st.setString(1, cpf);
                st.executeUpdate(); // Executa o comando DELETE
                
                response.sendRedirect("conscli.jsp");
        %>
    </body>
</html>
