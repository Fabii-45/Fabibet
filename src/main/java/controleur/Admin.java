package controleur;

import facade.FacadeParis;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "admin", urlPatterns = "/admin/*")
public class Admin extends HttpServlet {
    public final static String PAGE_DEFAUT = "/WEB-INF/jsp/connexion.jsp";
    public final static String NOUVEAUMATCH = "nouveaumatch";
    public final static String ENTRERRESULTAT = "entrerresultat";

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        FacadeParis facadeParis = (FacadeParis) getServletContext().getAttribute("facade");
        String destination = PAGE_DEFAUT;
        String[] chemin = req.getRequestURI().split("/");
        String cleNavigation = chemin[chemin.length-1];

        switch (cleNavigation) {
            case NOUVEAUMATCH: {
                break;
            }
            case ENTRERRESULTAT: {
                break;
            }
        }

    }

}
