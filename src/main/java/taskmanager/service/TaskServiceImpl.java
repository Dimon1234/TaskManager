package taskmanager.service;



import taskmanager.dao.TaskDao;
import taskmanager.model.Task;
import org.springframework.stereotype.Service;

import java.io.UnsupportedEncodingException;
import java.util.List;


@Service
public class TaskServiceImpl implements TaskService {
    private TaskDao taskDao;

    public void setTaskDao(TaskDao taskDao) {
        this.taskDao = taskDao;
    }

    @Override
    public void addTask(Task task) {
        taskDao.addTask(task);
    }

    @Override
    public void updateTask(Task task)  {
        taskDao.updateTask(task);
    }

    @Override
    public void removeTask(int id) {
        taskDao.removeTask(id);
    }

    @Override
    public Task getTaskById(int id) {
        return taskDao.getTaskById(id);
    }

    @Override
    public List<Task> listTasks() {
        return taskDao.listTasks();
    }

    @Override
    public List<Task> sortDefault() {
        return taskDao.sortDefault();
    }

    @Override
    public List<Task> sortDate() {
        return taskDao.sortDate();
    }

    @Override
    public List<Task> sortPriority() {
        return taskDao.sortPriority();
    }

    public List<Task> sortDone() {
        return taskDao.sortDone();
    }

    @Override
    public void checkTask(Task task) {
        taskDao.checkTask(task);
    }



}
