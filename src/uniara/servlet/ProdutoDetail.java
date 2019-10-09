package uniara.servlet;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Servico.DatabaseFunctions;
import Entidades.Produto;

/**
 * Servlet implementation class Servlet
 */

@WebServlet("/produto")
public class ProdutoDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProdutoDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		DatabaseFunctions df = new DatabaseFunctions();
		
		Produto p = df.findProduto(Integer.parseInt(request.getParameter("id").toString()));
		
        request.setAttribute("produto", p);
        request.getRequestDispatcher("/prod.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
