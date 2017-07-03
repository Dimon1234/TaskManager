package taskmanager.controller;


import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.InitBinder;
import taskmanager.service.DateEditor;


import java.util.Date;


@ControllerAdvice
public class GlobalBindingInitializer {
     /* Initialize a global InitBinder for dates instead of cloning its code in every Controller */

    @InitBinder
    public void binder(WebDataBinder binder) {
        binder.registerCustomEditor(Date.class, new DateEditor());
    }
}
