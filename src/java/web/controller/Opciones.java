/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package web.controller;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import web.dao.SelectDao;
import web.model.SelectBean;

/**
 *
 * @author AdrianCruz
 */
@WebServlet(name = "Opciones", urlPatterns = {"/Opciones"})
public class Opciones extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            Gson gson = new Gson();        
            List<SelectBean> opciones = new ArrayList<SelectBean>();
            SelectDao dao=new SelectDao();
            String q=request.getParameter("q");
            if(q==null || q.isEmpty())
                q="";
            String selectX=request.getParameter("paramName");
            String query ="";                 
            if(selectX!=null){
               if(selectX.equalsIgnoreCase("editorial"))
                 query="select * from editorial where activo=1 AND  nombre LIKE '%"+q+"%' order by nombre;";    
               if(selectX.equalsIgnoreCase("area"))
                 query="select * from area where activo=1 AND  descripcion LIKE '%"+q+"%'  order by descripcion;";    
            }else{ 
                query="select TOP 15 * from autor where activo=1 AND nombre LIKE '%"+q+"%'  order by nombre;";
            }                
            opciones = dao.consultar(query);                                                                                
            String json = gson.toJson(opciones); 
//convertir lista de elementos SelectBean a json [{"name":"op1","id":"1"},... ,{"name":"opN","id":"N"}]
            System.out.println("****respondemos en formato json: "+json);
            response.setContentType("application/json");
            response.getWriter().write(json);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
