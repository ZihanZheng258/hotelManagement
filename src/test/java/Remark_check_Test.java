import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;
import services.Remark_check;

public class Remark_check_Test {
    @Test
    void Test()
    {
        assertEquals(Remark_check.remark(1000).getId(), 1000);
        assertNotNull(Remark_check.remark(1000).getContent());
        assertNotNull(Remark_check.remark(1000).getRoomID());
        assertNotNull(Remark_check.remark(1000).getScore());
        assertNotNull(Remark_check.remark(1000).getUserName());
        assertNotNull(Remark_check.remark(1000).getUserID());
    }
}
