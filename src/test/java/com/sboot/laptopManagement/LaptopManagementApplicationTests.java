package com.sboot.laptopManagement;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.fail;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.sboot.laptopManagement.entity.Laptop;
import com.sboot.laptopManagement.entity.User;
import com.sboot.laptopManagement.service.LaptopService;
import com.sboot.laptopManagement.service.UserService;

@SpringBootTest
class LaptopManagementApplicationTests {
	@Autowired
	LaptopService lvs;
	@Autowired
	UserService uvs;


	@Test
	void contextLoads() {	
	}
	//Test the added laptop
	@Test
	public void addlaptopTest() {
		assertEquals("Laptop Added", lvs.addLaptop(new Laptop(161, "dell", "black", 40000)));
	}
	//Test the view laptop
	@Test
	public void viewlaptopTest() {
		assertNotNull(lvs.viewlaptop(111));
	}
	//Test all the  view laptops
    @Test
    public void viewalllaptop() {
    	assertNotNull(lvs.viewAlllaptop());
    }
    //Test the updated laptop
    @Test
    public void updatelaptopTest() {
    	assertEquals("Laptop updated", lvs.updateLaptop(new Laptop(113, "Macbook", "white", 91000.0)));
    }
    //Test the deleted laptop
    @Test
    public void deletelaptopTest1() {
    	assertEquals("Laptop Deleted", lvs.deleteLaptop(111));
    }
    //Test the deleted laptop 
    @Test
    public void deletelaptopTest2() {
    	assertEquals("Laptop unavailable", lvs.deleteLaptop(555));
    }
    //Test the register user
    @Test
    public void registerUser() {
    	assertEquals("User registration got successful", uvs.registerUser(new User(202, "dsingh", "pardhi", "d@123", "987654321", "dsingh@123", "nagpur")));
    }
    //Test the view user
    @Test
    public void viewuserTest() {
    	assertNotNull(uvs.viewUser(101));
    }
    
    //Test the invoice data
    @Test
    public void getinvoiceTest() {
    	assertNotNull(uvs.getinvoice(101));
    }
    
    //Test the  purchase data
    @Test
    public void purchaseLaptopTest() {
    	assertEquals("Purchase Completed", uvs.purchaseLaptop(113, 101));
    }
    //Test the view purchase
    @Test
    public void viewPurchaseListTest() {
    	assertNotNull(uvs.viewPurchaseList());
    }
    //Test the purchased data
    @Test
    public void getPurchseDataTest() {
    	assertNotNull(uvs.getPurchseData(1));
    }
}

