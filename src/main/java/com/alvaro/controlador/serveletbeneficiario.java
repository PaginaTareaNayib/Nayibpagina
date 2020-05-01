package com.alvaro.controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alvaro.DAO.beneficiarioDAO;
import com.alvaro.modulo.TblBeneficiario;
import com.google.gson.Gson;

/**
 * Servlet implementation class serveletbeneficiario
 */
public class serveletbeneficiario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public serveletbeneficiario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		TblBeneficiario bf = new TblBeneficiario();
		Gson json=new Gson();
	beneficiarioDAO dao = new beneficiarioDAO();
	String dui = request.getParameter("caja");
	System.out.println(dui);
	bf.setDui(dui);
	dao.Listabeneficiario(bf);
	try {

		response.getWriter().append(json.toJson(dao.Listabeneficiario(bf)));		
	}catch (Exception e) {
		System.out.println(e + " eror json");
	}
	
	}

}
