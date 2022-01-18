package controleur;

import facade.FacadeParis;
import facade.FacadeParisStaticImpl;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class InitApplication implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        FacadeParis facadeParis = new FacadeParisStaticImpl();
        sce.getServletContext().setAttribute("facade",facadeParis);
        sce.getServletContext().setAttribute("applicationName",Pel.SERVELTNAME);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        sce.getServletContext().setAttribute("facade",null);
    }
}
