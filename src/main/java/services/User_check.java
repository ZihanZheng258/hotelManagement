package services;
import beans.User;



public class User_check {


    public static User user(int id) {
        User user = new User();
        user.setName("Guy");
        user.setID(id);
        user.setPassword("admin");
        user.setPhoneNumber("0123123123");
        user.setType("customer");
        user.setPicture(123);
        user.setBalance(10000);
        user.setPayPassword("paypass");

        if (user.getID()== 128) {
            return user;
        }
        return user;
    }

}
