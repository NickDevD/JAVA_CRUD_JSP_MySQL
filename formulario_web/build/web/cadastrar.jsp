<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String cpf;
            String nome;
            String endereco;
            String telefone;
            
            cpf = request.getParameter("cpf");
            nome = request.getParameter("nome");
            endereco = request.getParameter("endereco");
            telefone = request.getParameter("telefone");
            
            //Conectar com o banco de dados
            Connection conecta;
            PreparedStatement st;
            Class.forName("com.mysql.cj.jdbc.Driver");
            conecta = DriverManager.getConnection("jdbc:mysql://localhost:3306/controlecliente","root", "admin");
            
            st = conecta.prepareStatement("INSERT INTO clientes VALUES (?,?,?,?)");
            st.setString(1, cpf);
         %>    
    </body>
</html>
