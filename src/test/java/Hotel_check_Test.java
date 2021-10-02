import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import services.Hotel_check;
class Hotel_check_Test {

	@Test
	void test() {
		assertNotNull(Hotel_check.hotel(123).getId());
	}
    
}
