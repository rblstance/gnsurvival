package question;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import result.ResultDao;

/**
 * Servlet implementation class Q6Action
 */
@WebServlet("/Q6Action")
public class Q6Action extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Q6Action() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ResultDao dao = ResultDao.getInstance();
		HttpSession session = request.getSession();
		String code = (String)session.getAttribute("code");
		if(request.getParameter("answer") != null){
			int q4 = Integer.parseInt(request.getParameter("answer").substring(0,1));
			int inout = Integer.parseInt(request.getParameter("answer").substring(1,2));
			
			dao.updateQ4(code, q4, inout);
		}
		request.getRequestDispatcher("/q7").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
