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
 * Servlet implementation class serveletdatos
 */
public class serveletdatos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public serveletdatos() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
      TblBeneficiario bf = new TblBeneficiario();
      beneficiarioDAO dao = new beneficiarioDAO();
      
      String id = null;
		String nombre = null;
		String edad = null;
		String direccion = null;
		String dui = null;
		
		try {
			id = request.getParameter("id");
			 nombre = request.getParameter("nombre");
			 edad = request.getParameter("edad");
			 direccion = request.getParameter("Direccion");
			 dui = request.getParameter("DUI");
			 
			 bf.setIdBeneficiario(Integer.parseInt(id));
			 bf.setNombre(nombre);
			 bf.setEdad(Integer.parseInt(edad));
			 bf.setDireccion(direccion);
			 bf.setDui(dui);
			 
		}catch (Exception e) {
			 
		}
		String action = request.getParameter("btn");
		System.out.println(action);
		if(action.equals("Guardar")){
			bf.setIdBeneficiario (Integer.parseInt(id));
			 bf.setNombre(nombre);
			 bf.setEdad(Integer.parseInt(edad));
			 bf.setDireccion(direccion);
			 bf.setDui(dui);	
			 dao.agregarDatos(bf);
		}else if(action.equals("Actualizar")){
			bf.setIdBeneficiario (Integer.parseInt(id));
			 bf.setNombre(nombre);
			 bf.setEdad(Integer.parseInt(edad));
			 bf.setDireccion(direccion);
			 bf.setDui(dui);
			 dao.actualizarDatos(bf);
		}else if(action.equals("Eliminar")) {
			bf.setIdBeneficiario (Integer.parseInt(id));
			dao.eliminarDatos(bf);
		}
		response.sendRedirect("datos.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		TblBeneficiario bf = new TblBeneficiario();
		Gson json=new Gson();
	beneficiarioDAO dao = new beneficiarioDAO();
	dao.Listabeneficiariot();
	try {

		response.getWriter().append(json.toJson(dao.Listabeneficiariot()));		
	}catch (Exception e) {
		System.out.println(e + " eror json");
	}
	
	}
	}


