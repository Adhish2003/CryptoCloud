<%-- 
    Document   : loigaction
    Created on : May 19, 2016, 5:33:38 PM
    Author     : java4
--%>

<%@page import="java.security.SecureRandom"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="network.DbConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>

<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    String name = request.getParameter("name");
    String State = request.getParameter("state");
    String country = request.getParameter("country");
    String pass = request.getParameter("pass");
    System.out.println("Client Login" + pass + name);
    int status = Integer.parseInt(request.getParameter("status"));
    String email = request.getParameter("email");
    String dob = request.getParameter("date");
    String gen = request.getParameter("gender");
    String rpass = request.getParameter("rpass");
    String role = request.getParameter("role");
    String user = request.getParameter("username");
    String phone = request.getParameter("phone");
    String sk = request.getParameter("secretkey");
    String secret = request.getParameter("secret_key");
    String otp = request.getParameter("otp");
    String algo = request.getParameter("Ceaser");
    System.out.println("User" + email + pass + secret);

    Random RANDOM = new SecureRandom();
    int PASSWORD_LENGTH = 9;
    String letters = "qwertyuioplkjhgfdsazxcvbnm";
    String key = "";

    for (int i = 0; i < PASSWORD_LENGTH; i++) {
        int index = (int) (RANDOM.nextDouble() * letters.length());
        key += letters.substring(index, index + 1);
    }

    System.out.println("registration --::>" + name + State + country + email + dob + gen + user + phone);
    try {
        con = DbConnection.getConnection();
        st = con.createStatement();
        switch (status) {
            case 1:
                try {
                rs = st.executeQuery("select * from reg where Email='" + email + "' AND spass='" + pass + "'");
                if (rs.next()) {
                    session.setAttribute("ssid", rs.getString("id"));
                    session.setAttribute("sscountry", rs.getString("country"));
                    session.setAttribute("ssemail", rs.getString("Email"));
                    session.setAttribute("ssname", rs.getString("Name"));
                    session.setAttribute("ssstate", rs.getString("state"));

                    response.sendRedirect("c_home.jsp?msg=success");
                } else {
                    response.sendRedirect("client.jsp?msgg=failed");
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            break;
            case 2:
                try {
                rs = st.executeQuery("select * from reg where Name='" + name + "' AND Pass='" + pass + "' AND role='Soldier'");
                if (rs.next()) {
                    session.setAttribute("email", rs.getString("email"));
                    session.setAttribute("name", rs.getString("name"));
                    session.setAttribute("role", rs.getString("role"));
                    session.setAttribute("id", rs.getString("id"));

                    response.sendRedirect("s_one_p.jsp?msg=success");
                } else {
                    response.sendRedirect("sol.jsp?msgg=failed");
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            break;

            case 3:

              try {
                con = DbConnection.getConnection();
                st = con.createStatement();
                int i = st.executeUpdate("insert into reg(Name, Email, DOB, Gender, UserName, spass, state, country, phone, request) values ('" + name + "','" + email + "','" + dob + "','" + gen + "','" + user + "','" + rpass + "','" + State + "','" + country + "','" + phone + "','No')");
                System.out.println(i);
                if (i != 0) {

                    response.sendRedirect("reg.jsp?msg=success");
                } else {
                    response.sendRedirect("reg.jsp?msgg=failed");
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            break;

            case 4:
                try {
                if (name.equalsIgnoreCase("Auditor") && pass.equalsIgnoreCase("Auditor")) {
                    response.sendRedirect("ahome.jsp?msg=success");
                } else {
                    response.sendRedirect("auditor.jsp?msgg=failed");
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            break;
            case 5:
                try {
                rs = st.executeQuery("select * from reg where otp='" + otp + "' ");
                if (rs.next()) {

                    response.sendRedirect("c_home.jsp?msg=success");
                } else {
                    response.sendRedirect("c_one_p.jsp?msgg=failed");
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }

            break;
            case 6:
                try {
                if (name.equalsIgnoreCase("csp") && pass.equalsIgnoreCase("csp")) {
                    response.sendRedirect("csp_home.jsp?msg=success");
                } else {
                    response.sendRedirect("csp.jsp?msgg=failed");
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            break;
            case 7:
                try {
                rs = st.executeQuery("select * from uploads where secretkey='" + sk + "' AND algo='TDES'");
                if (rs.next()) {
                    session.setAttribute("ssidsecretkey", rs.getString("secretkey"));

                    response.sendRedirect("result.jsp?msg=success");
                } else {
                    response.sendRedirect("other1.jsp?msgg=failed");
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            break;
            case 8:
                try {
                rs = st.executeQuery("select * from uploads where secretkey='" + sk + "' AND algo='Ceaser'");
                if (rs.next()) {
                    session.setAttribute("ssidsecretkey", rs.getString("secretkey"));

                    response.sendRedirect("result1.jsp?msg=success");
                } else {
                    response.sendRedirect("file_access2.jsp?msgg=failed");
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            break;
            case 9:
                try {
                rs = st.executeQuery("select * from uploads where secretkey='" + sk + "' AND algo='RSA'");
                if (rs.next()) {
                    session.setAttribute("ssidsecretkey", rs.getString("secretkey"));

                    response.sendRedirect("result2.jsp?msg=success");
                } else {
                    response.sendRedirect("file_access3.jsp?msgg=failed");
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            break;
            default:
                response.sendRedirect("index.html");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>