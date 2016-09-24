package pl.dmichalski.bootstrap.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
}
