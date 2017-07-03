package taskmanager.dao;

import taskmanager.model.Task;

import java.io.UnsupportedEncodingException;
import java.util.List;

/**
 * Created by User on 20.02.2017.
 */
public interface TaskDao {
    public void addTask(Task task);

    public void updateTask(Task task);
    public void removeTask(int id);

    public Task getTaskById(int id);

    public List<Task> listTasks();

    public List<Task> sortDefault();

    public List<Task> sortDate();

    public List<Task> sortPriority();

    public List<Task> sortDone();

    public void checkTask(Task task);
}
