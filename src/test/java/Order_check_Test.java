import org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;
import services.Order_check;

import java.text.ParseException;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

class Order_check_Test {
    @Test
    void test() throws ParseException {
        assertEquals(Order_check.order(100000).getId(), 100000);
        assertNotNull(Order_check.order(100000).getRoomID());
        assertNotNull(Order_check.order(100000).getUserID());
        assertNotNull(Order_check.order(100000).getAmount());
        assertNotNull(Order_check.order(100000).getStatus());
        assertNotNull(Order_check.order(100000).getRemark());
        assertNotNull(Order_check.order(100000).getStart_time());
        assertNotNull(Order_check.order(100000).getEnd_time());
    }
}
