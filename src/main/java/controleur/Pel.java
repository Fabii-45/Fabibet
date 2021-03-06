package controleur;

import facade.FacadeParis;
import facade.exceptions.*;
import modele.Match;
import modele.Pari;
import modele.Utilisateur;

import static java.lang.Float.parseFloat;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.io.IOException;
import java.util.Collection;
import java.util.Objects;

@WebServlet(name = "pel", urlPatterns = "/pel/*")
public class Pel extends HttpServlet {
    public final static String PAGE_DEFAUT = "/WEB-INF/jsp/connexion.jsp";
    public final static String CONNEXION = "connexion";
    public final static String DECONNEXION = "deconnexion";
    public final static String MENU = "menu";
    public final static String PARISOUVERTS = "parisouverts";
    public final static String MESPARIS = "mesparis";
    public final static String PARI = "pariermatch";
    public final static String PARIER = "parier";
    public final static String ANNNULERPARI = "annulerpari";
    public final static String SERVELTNAME = "pel";

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        FacadeParis facadeParis = (FacadeParis) getServletContext().getAttribute("facade");
        String destination = PAGE_DEFAUT;
        String[] chemin = req.getRequestURI().split("/");
        String cleNavigation = chemin[chemin.length-1];


        switch (cleNavigation){
            case MENU:{
                Utilisateur utilisateur = (Utilisateur) req.getSession().getAttribute("util");
                boolean estAdmin = utilisateur.isAdmin();
                req.getSession().setAttribute("estAdmin",estAdmin);
                destination = "/WEB-INF/jsp/menu.jsp";
                break;
            }
            case PARI:{
                Long idMatch = Long.parseLong(req.getParameter("id"));
                Match match = facadeParis.getMatch(idMatch);
                req.getSession().setAttribute("match",match);
                destination = "/WEB-INF/jsp/pariermatch.jsp";
                break;
            }

            case PARIER:{
                Utilisateur utilisateur = (Utilisateur) req.getSession().getAttribute("util");
                if (utilisateur == null)
                    destination = PAGE_DEFAUT;
                else {
                    String pari = req.getParameter("pari");
                    Float mise = parseFloat(req.getParameter("mise"));
                    String erreur = "";
                    Match match = (Match) req.getSession().getAttribute("match");
                    try {
                        facadeParis.parier(utilisateur.getLogin(), match.getIdMatch(), pari, mise);
                        req.setAttribute("pari", pari);
                        req.setAttribute("mise", mise);
                        destination = "/WEB-INF/jsp/confirmerpari.jsp";
                    } catch (MatchClosException e) {
                        erreur += "Match ferm?? aux paris !";
                        req.setAttribute("erreur", erreur);
                        destination = "/WEB-INF/jsp/pariermatch.jsp";
                    } catch (ResultatImpossibleException e) {
                        erreur += "R??sultat impossible !";
                        req.setAttribute("erreur", erreur);
                        destination = "/WEB-INF/jsp/pariermatch.jsp";
                    } catch (MontantNegatifOuNulException e) {
                        erreur += "Vous ne pouvez pas parier 0??? !";
                        req.setAttribute("erreur", erreur);
                        destination = "/WEB-INF/jsp/pariermatch.jsp";
                    }
                }
                break;
            }
            case PARISOUVERTS: {
                Collection<Match> lesMatchs = facadeParis.getMatchsPasCommences();
                req.setAttribute("matchs", lesMatchs);
                destination = "/WEB-INF/jsp/parisouverts.jsp";
                break;
            }
            case MESPARIS: {
                Utilisateur utilisateur = (Utilisateur) req.getSession().getAttribute("util");
                if (utilisateur == null)
                    destination = PAGE_DEFAUT;
                else {
                    String login = utilisateur.getLogin();
                    Collection<Pari> lesParis = facadeParis.getMesParis(login);
                    req.setAttribute("paris", lesParis);
                    destination = "/WEB-INF/jsp/mesparis.jsp";
                }
                break;
            }
            case ANNNULERPARI: {
                Utilisateur utilisateur = (Utilisateur) req.getSession().getAttribute("util");
                if (utilisateur == null)
                    destination = PAGE_DEFAUT;
                else {
                    Long idPari = Long.parseLong(req.getParameter("id"));
                    Pari pari = facadeParis.getPari(idPari);
                    req.getSession().setAttribute("pari",pari);
                    try {
                        facadeParis.annulerPari(utilisateur.getLogin(), idPari);
                    } catch (OperationNonAuthoriseeException e) {
                        e.printStackTrace();
                    }
                    destination = "/WEB-INF/jsp/confirmerannulation.jsp";
                }


                break;
            }
            case CONNEXION: {
                String login = req.getParameter("login");
                String pwd = req.getParameter("password");
                Utilisateur utilisateur = null;
                String erreur = "";
                if (login == null || login.length() < 2) {
                    erreur += " Le pseudo est obligatoire et de taille 2 minimum.";
                    req.setAttribute("erreur", erreur);
                }
                else if (Objects.isNull(pwd) || pwd.length() < 2) {
                    erreur += " Le mot de passe est obligatoire et de taille 2 minimum.";
                    req.setAttribute("erreur", erreur);
                }
                else {
                    try {
                        utilisateur = facadeParis.connexion(login, pwd);
                        req.getSession().setAttribute("util", utilisateur);
                        destination = "/WEB-INF/jsp/menu.jsp";
                    } catch (UtilisateurDejaConnecteException e) {
                        destination = PAGE_DEFAUT;
                        erreur += "login ou mdp incorrect";
                        req.setAttribute("erreur", erreur);
                    } catch (InformationsSaisiesIncoherentesException e) {
                        destination = PAGE_DEFAUT;
                        erreur += "login ou mdp incorrect";
                        req.setAttribute("erreur", erreur);
                    }
                }
                break;
            }
            case DECONNEXION: {
                Utilisateur utilisateur = (Utilisateur) req.getSession().getAttribute("util");
                facadeParis.deconnexion(utilisateur.getLogin());
                req.getSession().invalidate();
                destination = PAGE_DEFAUT;
                break;
            }
        }
        req.getServletContext().getRequestDispatcher(destination).forward(req, resp);
    }
}
