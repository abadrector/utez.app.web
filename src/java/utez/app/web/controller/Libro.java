/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package utez.app.web.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import utez.app.web.dao.LibroDao;
import utez.app.web.model.AreaBean;
import utez.app.web.model.AutorBean;
import utez.app.web.model.EditorialBean;
import utez.app.web.model.LibroBean;

/**
 *
 * @author AdrianCruz
 */
@WebServlet(name = "Libro", urlPatterns = {"/Libro"})
public class Libro extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected static String processCreate(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String irA="/Libro?action=read";
        //int id = 
       String isbn=request.getParameter("isbn");
       String titulo=request.getParameter("titulo");
       int num_pag=Integer.parseInt(request.getParameter("numpag"));
       int idEdi=Integer.parseInt(request.getParameter("editorial"));
       EditorialBean editorial=new EditorialBean(idEdi,null,true);
       int idArea=Integer.parseInt(request.getParameter("area"));
       AreaBean area=new AreaBean(idArea,null,true);
       boolean activo=request.getParameter("activo").equals("1")?true:false;
       String[] idAutores = request.getParameter("autores").split(",");        
       List<AutorBean> autor=new ArrayList<AutorBean>();
       for (String idAutor : idAutores) {
           int id=Integer.parseInt(idAutor);
            autor.add(new AutorBean(id,null,true));
       }   
       LibroDao dao=new LibroDao();
       LibroBean bean=new LibroBean();                     
       bean.setActivo(activo);
       bean.setArea(area);
       bean.setAutor(autor);
       bean.setEditorial(editorial);
       bean.setIsbn(isbn);
       bean.setNum_pag(num_pag);
       bean.setTitulo(titulo);              
       dao.insertar(bean);// -------->       
       return irA;
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String irA="/index.jsp";
        String action=request.getParameter("action");
        LibroDao dao=new LibroDao();
        if(action!=null && action.equals("read")){            //leer/consultar y mostrar registros            
            List<LibroBean> resultado = dao.consultar(null);  //null para consulta por default
            request.setAttribute("atributoLibros", resultado);
            irA="/libroR.jsp";
        }else if(action!=null && action.equals("add")){       //irA form para nuevo registro
            irA="/libroC.jsp";            
        }else if(action!=null && action.equals("create")){    //recuperar valores y proceder a guardar en nuevo registro
            irA=processCreate(request,response);
        } else if(action!=null && action.equals("edit")){     // a formulario para editar
            
        }else if(action!=null && action.equals("update")){    //recuperar valores del formulario y guardar cambios
            
        }else if(action!=null && action.equals("delete")){    //eliminar registro
            
        }else{ //irA un jsp que indique que no se recuperó una acción valida
        }

        
        //redireccionar al jsp de acuerdo al valor de la variable "irA"
        this.getServletConfig().getServletContext().
                getRequestDispatcher(irA).forward(request, response);
            
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
