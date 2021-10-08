import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import services.Hotel_check;
class Hotel_check_Test {
	@Test
	void test() {
		assertEquals(Hotel_check.hotel(123).getId(),123);
		assertNotNull(Hotel_check.hotel(123).getType());
		assertNotNull(Hotel_check.hotel(123).getAddress());
		assertEquals(Hotel_check.hotel(123).getArea(),123);
		assertNotNull(Hotel_check.hotel(123).getIntroduction());
		assertNotNull(Hotel_check.hotel(123).getName());
		assertEquals(Hotel_check.hotel(123).getScore(),12);
		assertEquals(Hotel_check.hotel(123).getStar(),12);
	}
    
}
