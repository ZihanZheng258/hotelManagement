import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import services.User_check;

class User_check_Test {

	@Test
	void test() {
		assertEquals(User_check.user(111).getID(),111);
		assertNotNull(User_check.user(111).getPassword());
		assertNotNull(User_check.user(111).getPhoneNumber());
		assertNotNull(User_check.user(111).getType());
		assertNotNull(User_check.user(111).getPicture());
		assertNotNull(User_check.user(111).getBalance());
		assertNotNull(User_check.user(111).getPayPassword());
	}

}
