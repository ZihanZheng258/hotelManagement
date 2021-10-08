package services;
import beans.Remark;
public class Remark_check {
    public static Remark remark(int id)
    {
        Remark remark = new Remark();
        remark.setId(id);
        remark.setContent("Nice Room Nice Hotel");
        remark.setScore(10);
        remark.setUserName("Maxxi Boi");
        remark.setUserID(10000);
        remark.setRoomID(100);
        if (remark.getId() == 1000)
        {
            return remark;
        }
        return remark;
    }
}
