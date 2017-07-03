package taskmanager.model;

import javax.persistence.*;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;


@Entity
@Table(name = "tasks")
public class Task implements Serializable {


    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    private int id;

    @Column(name = "isDone")
    private boolean isDone = false;

    @Column(name = "text", nullable = false)
    private String textTask;

    @Temporal(TemporalType.DATE)
    @Column(name = "deadline", nullable = false)
    private Date deadlineDate;
    /**
     * приоритет задачи
     * от 1 до 4
     */
    @Column(name = "priority", nullable = false)
    private int priority;

    /**
     * подробное описание задачи, если требуется
     */
    @Column(name = "description")
    private String description;

    @Override
    public String toString() {
        return "Task{" +
                "id=" + id +
                ", textTask='" + textTask + '\'' +
                ", deadlineDate=" + deadlineDate +
                ", priority=" + priority +
                ", description='" + description + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public String getTextTask() {
        return textTask;
    }

    public Date getDeadlineDate() {
        return deadlineDate;
    }

    public String getStringPriority() {
        String srt = "Приоритет: ";
        switch (priority) {
            case 1: {
                srt += "Низкий";
                break;
            }
            case 2: {
                srt += "Нормальный";
                break;
            }
            case 3: {
                srt += "Высокий";
                break;
            }
            case 4: {
                srt += "Очень высокий";
                break;
            }
        }
        return srt;
    }
    public String getFormatDate()
    {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd.MM.yyyy");
        return "Dead Line: "+simpleDateFormat.format(deadlineDate);
    }

    public int getPriority()
    {
        return priority;
    }

    public String getDescription() {
        return description;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setTextTask(String textTask) {
        this.textTask = textTask;
    }

    public void setDeadlineDate(Date deadlineDate) {
        this.deadlineDate = deadlineDate;
    }

    public void setPriority(int priority) {
        this.priority = priority;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public boolean getisDone() {
        return isDone;
    }

    public void setisDone(boolean isDone) {
        this.isDone = isDone;
    }


}
