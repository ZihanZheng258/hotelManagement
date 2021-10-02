import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import services.User_check;

class User_check_Test {

	@Test
	void test() {
		assertNotNull(User_check.user(123).getID());
	}
    
}
