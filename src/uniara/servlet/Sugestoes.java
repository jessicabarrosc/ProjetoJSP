package uniara.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entidades.Produto;
import Entidades.SugestaoProduto;
import Servico.DatabaseFunctions;

/**
 * Servlet implementation class Sugestoes
 */
@WebServlet("/sugestoes")
public class Sugestoes extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ArrayList<SugestaoProduto> slista;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sugestoes() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	// TODO Auto-generated method stub
        request.setAttribute("slista", slista);
        RequestDispatcher rd = request.getRequestDispatcher("/Sugestoes.jsp");
        rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	if (slista == null)
    		slista = new ArrayList<SugestaoProduto>();
    	
		 String nome = request.getParameter("nome");
		 String tamanho  = request.getParameter("tamanho");
		 
		 int id = slista.size();
		 
		 
		 SugestaoProduto sp = new SugestaoProduto();
		 sp.setId(++id);
		 sp.setNome(nome);
		 sp.setTamanho(tamanho);		 
		 
		 slista.add(sp);
		 request.getSession().setAttribute("slista", slista);
		 response.sendRedirect("/ecommerce/sugestoes");
	}

}
