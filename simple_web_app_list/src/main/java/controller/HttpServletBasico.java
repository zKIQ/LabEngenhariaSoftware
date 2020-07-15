/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.NoticiaService;
import model.Noticia;
import java.util.List;


@WebServlet({"*.action","/"})
public class HttpServletBasico extends HttpServlet{
    
    @Override
    public void doGet(HttpServletRequest req,
                       HttpServletResponse res){
        
        String path = req.getServletPath();
        ServletContext sc = req.getServletContext();
        NoticiaService us = new NoticiaService();
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistencia_simples");     
        EntityManager em = emf.createEntityManager();
		List<Noticia> noticia = us.list();			
        req.setAttribute("noticia", noticia);
        
        switch (path){
            case "/":
               try{
                    sc.getRequestDispatcher("/jsp/index.jsp").forward(req, res);
                } catch (Exception e){}
               break;
			case "/cadastro.action":
				try{
					sc.getRequestDispatcher("/jsp/cadastro.jsp").forward(req, res);
				}catch(Exception e){}
                break;
            case "/cadastrodps.action":
				try{
                    String noticia1 = req.getParameter("cadastronoticia");
                    
                    Noticia no = new Noticia();

                    no.setNoticia(noticia1);
                    em.getTransaction().begin();
                    em.persist(no);
                    em.getTransaction().commit();

                    sc.getRequestDispatcher("/jsp/index.jsp").forward(req, res);
				}catch(Exception e){}
				break;
            default:
                try{
                   sc.getRequestDispatcher("/jsp/nao_encontrado.jsp").forward(req, res);
                }catch (Exception e){}               
        }
        
    }  
}