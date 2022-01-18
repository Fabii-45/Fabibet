package controleur;

import facade.FacadeParis;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.io.IOException;

@WebServlet(name = "pel", urlPatterns = "/pel/*")
public class Pel extends HttpServlet {
    public final static String PAGE_DEFAUT = "/WEB-INF/jsp/connexion.jsp";
    public final static String CONNEXION = "connexion";
    public final static String DECONNEXION = "deconnexion";
    public final static String MENU = "menu";
    public final static String PARISOUVERTS = "parisouverts";
    public final static String MESPARIS = "mesparis";
    public final static String SERVELTNAME = "pel";

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        FacadeParis facadeParis = (FacadeParis) getServletContext().getAttribute("facade");
        String destination = PAGE_DEFAUT;
        String[] chemin = req.getRequestURI().split("/");
        String cleNavigation = chemin[chemin.length-1];

        switch (cleNavigation){
            case DECONNEXION:
                destination = PAGE_DEFAUT;
                break;
            case MENU:
                destination = "/WEB-INF/jsp/menu.jsp";
                break;
            case PARISOUVERTS:
                destination = "/WEB-INF/jsp/parisouverts.jsp";
                break;
            case MESPARIS:
                destination = "/WEB-INF/jsp/mesparis.jsp";
                break;
            case CONNEXION:
                destination = "/WEB-INF/jsp/menu.jsp";
                break;
        }


        req.getServletContext().getRequestDispatcher(destination).forward(req, resp);
    }
}
