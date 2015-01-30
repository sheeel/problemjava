package by.itran.polina.domain;

import javax.persistence.*;

@Entity
@Table(name = "USERS")
public class Contact {

    @Id
    @Column(name = "ID")
    @GeneratedValue
    private Integer id;
    @Column(name = "USERNAME")
    private String login;
    @Column(name = "PASSWORD")
    private String password;
    @Column(name = "ENABLED")
    private String active;

    public Integer getId() {
        return id;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    // Getters and setters
    public String getActive() {
        return active;
    }

    public void setActive(String active) {
        this.active = active;
    }
}
