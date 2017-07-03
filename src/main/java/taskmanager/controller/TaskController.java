package taskmanager.controller;

import org.springframework.web.bind.annotation.*;
import taskmanager.model.Task;
import taskmanager.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import java.text.ParseException;
import java.util.Date;


@Controller
public class TaskController {
    private TaskService taskService;


    @Autowired(required = true)
    @Qualifier(value = "taskService")
    public void setTaskService(TaskService taskService) {
        this.taskService = taskService;
    }



    @RequestMapping("/")
    public String index()
    {
        return "/index";
    }

    @RequestMapping("/gallery")
    public String gallery()
    {
        return "gallery";
    }

    @RequestMapping("/about")
    public String about()
    {
        return "about";
    }



    @RequestMapping(value = "tasks", method = RequestMethod.GET)
    public String listTasks(Model model){

        model.addAttribute("task", new Task());
        model.addAttribute("listTasks", this.taskService.listTasks());
        return "tasks";
    }
    @RequestMapping("/showDescription/{id}")
    public String showDescription(@PathVariable("id") int id, Model model)
    {
        model.addAttribute("taskId", this.taskService.getTaskById(id));
        model.addAttribute("listTasks", this.taskService.listTasks());
        return "forward:/tasks";
    }

    @RequestMapping("/sortPriority")
    public String sortPriority(Model model)
    {

        model.addAttribute("task", new Task());
        model.addAttribute("listTasks", this.taskService.sortPriority());
        return "tasks";
    }
    @RequestMapping("/sortId")
    public String sortId(Model model)
    {

        model.addAttribute("task", new Task());
        model.addAttribute("listTasks", this.taskService.sortDefault());
        return "tasks";
    }
    @RequestMapping("/sortDate")
    public String sortDate(Model model)
    {

        model.addAttribute("task", new Task());
        model.addAttribute("listTasks", this.taskService.sortDate());
        return "tasks";
    }

    @RequestMapping("/sortDone" )
    public String sortDone(Model model)
    {

        model.addAttribute("task", new Task());
        model.addAttribute("listTasks", this.taskService.sortDone());
        return "tasks";
    }

    @RequestMapping(value = "/task/add", method = RequestMethod.POST)
    public String addTask(@ModelAttribute("task") Task task) throws ParseException {

        if (task.getDeadlineDate() == null) task.setDeadlineDate(new Date());

        if(task.getId() == 0){
            this.taskService.addTask(task);
        }else {
            this.taskService.updateTask(task);
        }

        return "redirect:/tasks";
    }

    @RequestMapping("/remove/{id}")
    public String removeTask(@PathVariable("id") int id){
        this.taskService.removeTask(id);

        return "redirect:/tasks";
    }

    @RequestMapping("edit/{id}")
    public String editTask(@PathVariable("id") int id, Model model){

        model.addAttribute("task", this.taskService.getTaskById(id));
        model.addAttribute("listTasks", this.taskService.listTasks());

        return "tasks";
    }

    @RequestMapping("check/{id}")
    public String checkTask(@PathVariable("id") int id, Model model)
    {
        model.addAttribute("task", this.taskService.getTaskById(id));
        Task task = this.taskService.getTaskById(id);
        if (task.getisDone()) task.setisDone(false);
        else task.setisDone(true);
        this.taskService.checkTask(task);

        return "redirect:/tasks";
    }

}
