package question;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import result.ResultDao;
import result.ResultDto;

/**
 * Servlet implementation class Q15Action
 */
@WebServlet("/Q15Action")
public class Q15Action extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Q15Action() {
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
			String question = request.getParameter("answer");
			ResultDto result = dao.getResult(code);
			String character = result.sum(result.getQ_1(), result.getQ_2(), result.getQ_3(), result.getQ_4(), result.getQ_5(), result.getQ_6(), result.getQ_7(), result.getQ_9());
			dao.updateResult(code, question, character);
		}
		request.getRequestDispatcher("/result").forward(request, response);
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
