package models;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Table(name = "typing_score")
@NamedQueries({
    @NamedQuery(
            name = "getAllTyping_score",
            query = "SELECT t FROM Typing AS t ORDER BY t.id DESC"
            )

})

@Entity
public class Typing {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "time", nullable = false)
    private Integer time;

    @Column(name = "time_date", nullable = false)
    private Date time_date;


    public Integer getId(){
        return id;
    }
    public void setId(Integer id){
        this.id = id;
    }


    public Integer getTime(){
        return time;
    }
    public void setTime(Integer time){
        this.time = time;
    }


    public Date getTime_date(){
        return time_date;
    }
    public void setTime_date(Date time_date){
        this.time_date = time_date;
    }
}
