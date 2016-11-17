package nl.surfnet.mujina.controllers;

import nl.surfnet.mujina.model.IdpConfiguration;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.JavaScriptUtils;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/config")
public class ConfigurationController {

  @Autowired
  private IdpConfiguration configuration;

  @RequestMapping(method = RequestMethod.GET)
  public String renderConfigPage(HttpServletRequest request) throws Exception {
    ObjectMapper objectMapper = new ObjectMapper();

    String attributes = objectMapper.writeValueAsString(configuration.getAttributes());

    request.setAttribute("attributes", JavaScriptUtils.javaScriptEscape(attributes));

    return "/gui/config";
  }
}
