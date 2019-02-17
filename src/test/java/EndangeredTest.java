import org.junit.*;
import static org.junit.Assert.*;
import org.sql2o.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Arrays;

public class EndangeredTest {
  @Rule
  public DatabaseRule database = new DatabaseRule();

  @Test
  public void Endangered_instantiatesCorrectly_true() {
    Endangered testEndangered = new Endangered("Rhino", "Healthy", "Young");
    assertEquals(true, testEndangered instanceof Endangered);
  }

  @Test
  public void getHealth_returnsHealthAttribute_true() {
    Endangered testEndangered = new Endangered("Rhino", "Healthy", "Young");
    assertEquals("Healthy", testEndangered.getHealth());
  }

  @Test
  public void save_assignsIdAndSavesObjectToDatabase() {
    Endangered testEndangered = new Endangered("Rhino", "Healthy", "Young");
    testEndangered.save();
    Endangered savedEndangered = Endangered.all().get(0);
    assertEquals(testEndangered.getId(), savedEndangered.getId());
  }

  @Test
  public void all_returnsAllInstancesOfEndangered_true() {
    Endangered firstEndangered = new Endangered("Rhino", "Healthy", "Young");
    firstEndangered.save();
    Endangered secondEndangered = new Endangered("Bear", "Okay", "Adult");
    secondEndangered.save();
    assertEquals(true, Endangered.all().get(0).equals(firstEndangered));
    assertEquals(true, Endangered.all().get(1).equals(secondEndangered));
  }

  @Test
  public void find_returnsAnimalWithSameId_secondAnimal() {
    Endangered firstEndangered = new Endangered("Rhino", "Healthy", "Young");
    firstEndangered.save();
    Endangered secondEndangered = new Endangered("Bear", "Okay", "Adult");
    secondEndangered.save();
    assertEquals(Endangered.find(secondEndangered.getId()), secondEndangered);
  }

  @Test
  public void update_updatesHealthAttribute_true() {
    Endangered testEndangered = new Endangered("Rhino", "Healthy", "Young");
    testEndangered.save();
    testEndangered.updateHealth("ill");
    assertEquals("ill", Endangered.find(testEndangered.getId()).getHealth());
  }

  @Test
  public void update_updatesAgeAttribute_true() {
    Endangered testEndangered = new Endangered("Rhino", "Healthy", "Young");
    testEndangered.save();
    testEndangered.updateAge("Adult");
    assertEquals("Adult", Endangered.find(testEndangered.getId()).getAge());
  }

}
