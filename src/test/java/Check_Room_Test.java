import org.junit.jupiter.api.Test;
import services.Check_Room;

import static org.junit.jupiter.api.Assertions.*;


public class Check_Room_Test {
    @Test
    void Test()
    {
        assertEquals(Check_Room.room(100).getId(),100);
        assertNotNull(Check_Room.room(100).getName());
        assertNotNull(Check_Room.room(100).getType());

    }

}

