package pl.dmichalski.bootstrap.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * Created by rdas on 12/09/2016.
 * https://github.com/fazeelmohamed/Spring4MVCAngularJSExample
 */
@Controller
public class AngularController {

    @RequestMapping(method = RequestMethod.GET, path = "ang")
    public String getIndexPage(ModelMap model) throws Exception {
        return "ang-index";
    }

    @ResponseBody
    @RequestMapping("/resource")
    public Map<String, Object> getResources() {
        Map<String, Object> model = new HashMap();
        model.put("id", UUID.randomUUID().toString());
        model.put("content", "Hello World");
        model.put("date", new Date());
        return model;
    }
}
