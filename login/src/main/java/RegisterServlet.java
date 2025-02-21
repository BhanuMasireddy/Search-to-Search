import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            PrintWriter out = response.getWriter();
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bhanu", "root", "Bhanu@123");

            String name = request.getParameter("txtName");
            String email = request.getParameter("txtEmail");
            String password = request.getParameter("txtPwd");
            String confirmPassword = request.getParameter("txtConfirmPwd");

            if (name == null || email == null || password == null || confirmPassword == null ||
                name.isEmpty() || email.isEmpty() || password.isEmpty() || confirmPassword.isEmpty()) {
                out.println("<font color=red size=18>All fields are required!<br>");
                out.println("<a href='register.jsp'>TRY AGAIN!</a>");
                return;
            }

            if (!password.equals(confirmPassword)) {
                out.println("<font color=red size=18>Passwords do not match!<br>");
                out.println("<a href='register.jsp'>TRY AGAIN!</a>");
                return;
            }

            PreparedStatement ps = con.prepareStatement("INSERT INTO login (uname, email, password) VALUES (?, ?, ?)");
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);

            int rowsAffected = ps.executeUpdate();
            if (rowsAffected > 0) {
                RequestDispatcher rd = request.getRequestDispatcher("RegisterSuccess.jsp");
                rd.forward(request, response);
            } else {
                out.println("<font color=red size=18>Registration Failed!!<br>");
                out.println("<a href='register.jsp'>TRY AGAIN!!</a>");
            }

            con.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
