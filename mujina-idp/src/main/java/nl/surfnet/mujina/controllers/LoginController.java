package nl.surfnet.mujina.controllers;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/login")
public class LoginController {

  @Value("${AUTHN_RESPONDER_URI}")
  private String authnResponderUri;

  @RequestMapping(method = RequestMethod.GET)
  public void renderConfigPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
    response.sendRedirect(authnResponderUri);
  }
}
