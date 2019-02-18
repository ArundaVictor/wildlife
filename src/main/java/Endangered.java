import org.sql2o.*;
import java.util.ArrayList;
import java.util.List;

public class Endangered extends Animals {
  public boolean endangered;
  private String health;
  private String age;

  public Endangered(String name, String health, String age) {
    this.name = name;
    this.id = id;
    this.health = health;
    this.age = age;
  }

  public String getHealth() {
    return health;
  }

  public String getAge() {
    return age;
  }

  @Override
  public boolean equals(Object otherEndangered) {
    if(!(otherEndangered instanceof Endangered)) {
      return false;
    } else {
      Endangered newEndangered = (Endangered) otherEndangered;
      return this.getName().equals(newEndangered.getName()) && this.getHealth().equals(newEndangered.getHealth()) && this.getAge().equals(newEndangered.getAge());
    }
  }

  public void save() {
    try(Connection con = DB.sql2o.open()) {
      String sql = "INSERT INTO endangered_animals (name, health, age) VALUES (:name, :health, :age);";
      this.id = (int) con.createQuery(sql, true)
        .addParameter("name", this.name)
        .addParameter("health", this.health)
        .addParameter("age", this.age)
        .executeUpdate()
        .getKey();
    }
  }

  public static List<Endangered> all() {
    try(Connection con = DB.sql2o.open()) {
      String sql = "SELECT * FROM endangered_animals;";
      return con.createQuery(sql)
        .executeAndFetch(Endangered.class);
    }
  }

  public static Endangered find(int id) {
    try(Connection con = DB.sql2o.open()) {
      String sql = "SELECT * FROM endangered_animals WHERE id=:id;";
      Endangered Endangered = con.createQuery(sql)
        .addParameter("id", id)
        .executeAndFetchFirst(Endangered.class);
      return Endangered;
    }
  }

  public void updateHealth(String health) {
    try(Connection con = DB.sql2o.open()) {
      String sql = "UPDATE endangered_animals SET health=:health WHERE id=:id;";
      con.createQuery(sql)
        .addParameter("id", id)
        .addParameter("health", health)
        .executeUpdate();
    }
  }

  public void updateAge(String age) {
    try(Connection con = DB.sql2o.open()) {
      String sql = "UPDATE endangered_animals SET age=:age WHERE id=:id;";
      con.createQuery(sql)
        .addParameter("age", age)
        .addParameter("id", id)
        .executeUpdate();
    }
  }

  public List<Sighting> getSightings() {
    try(Connection con = DB.sql2o.open()) {
      String sql = "SELECT * FROM sightings WHERE animal_id=:id;";
        List<Sighting> sightings = con.createQuery(sql)
          .addParameter("id", id)
          .executeAndFetch(Sighting.class);
      return sightings;
    }
  }


}
