package beans;
import enums.RoomBookedStatus;
import enums.RoomType;
public class Room {

	private int id;
    private String name;
    private int number;
    private RoomType type;
	private String picture;
    private double area;
    private double bedWidth;
    private RoomBookedStatus bookStatus;
    private double price;
    private int score;
    private String remark;
    private int level;
    
    public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public RoomType getType() {
		return type;
	}
	public void setType(RoomType type) {
		this.type = type;
	}
	public String getpicture() {
		return picture;
	}
	public void setpicture(String photo) {
		this.picture = photo;
	}
	public double getArea() {
		return area;
	}
	public void setArea(double area) {
		this.area = area;
	}
	public double getBedWidth() {
		return bedWidth;
	}
	public void setBedWidth(double bedWidth) {
		this.bedWidth = bedWidth;
	}
	public RoomBookedStatus getBookStatus() {
		return bookStatus;
	}
	public void setBookStatus(RoomBookedStatus bookStatus) {
		this.bookStatus = bookStatus;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
}
