package com.ldv.saml.websphere.simplesp.servlet;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class MainServlet extends HttpServlet {

  private static final Logger LOGGER = LoggerFactory.getLogger(MainServlet.class);

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    LOGGER.debug("Remote user is {}", req.getRemoteUser());

    getServletContext().getRequestDispatcher("/WEB-INF/jsp/home.jsp").forward(req, resp);
  }
}
