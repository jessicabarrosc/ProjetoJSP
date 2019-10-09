package uniara.servlet;

import java.io.IOException;
import java.util.ArrayList;

import Entidades.Produto;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Servico.DatabaseFunctions;

/**
 * Servlet implementation class Servlet
 */

@WebServlet("/produtos")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		DatabaseFunctions df = new DatabaseFunctions();
		
		ArrayList<Produto> alp = df.selectAll();
		
        request.setAttribute("produtos", alp);
        request.getRequestDispatcher("/prods.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
