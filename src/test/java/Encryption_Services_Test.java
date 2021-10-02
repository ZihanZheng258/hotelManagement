import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import services.Encryption_Services;

class Encryption_Services_Test {

	@Test
	void test() {
		assertEquals(Encryption_Services.MD5Encryption(" the test String used for encryption"),"e9fbd99fc14088b2767bb9bf31d9a1d1");
		assertNotEquals(Encryption_Services.MD5Encryption(" 111the test String used for encryption"),"e9fbd99fc14088b2767bb9bf31d9a1d1");
	}
    
}
