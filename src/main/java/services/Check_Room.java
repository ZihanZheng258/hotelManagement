package services;
import beans.Room;


public class Check_Room {

    public static Room room(int id)
    {
        Room room = new Room();
        room.setId(id);
        room.setName("Rose");
        room.setType("single bed room");
        if (room.getId()== 100) {
            return room;
        }
        return room;
    }
}
