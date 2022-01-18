package controleur;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.io.IOException;

@WebServlet(name = "pel", urlPatterns = "/pel/*")
public class Pel extends HttpServlet {
    private final static String PAGE_DEFAUT = "/WEB-INF/jsp/connexion.jsp";
    private final static String CONNEXION = "connexion";
    private final static String DECONNEXION = "deconnexion";
    private final static String MENU = "menu";
    private final static String PARISOUVERTS = "parisouverts";
    private final static String MESPARIS = "mesparis";
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String destination = PAGE_DEFAUT;
        String[] chemin = req.getRequestURI().split("/");
        String cleNavigation = chemin[chemin.length-1];

        switch (cleNavigation){
            case "deconnexion":
                destination = PAGE_DEFAUT;
                break;
            case "menu":
                destination = "/WEB-INF/jsp/menu.jsp";
                break;
            case "parisouverts":
                destination = "/WEB-INF/jsp/parisouverts.jsp";
                break;
            case "mesparis":
                destination = "/WEB-INF/jsp/mesparis.jsp";
                break;
            case "connexion":
                destination = "/WEB-INF/jsp/menu.jsp";
                break;

        }


        req.getServletContext().getRequestDispatcher(destination).forward(req, resp);
    }
}
