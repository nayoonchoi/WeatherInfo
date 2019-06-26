package db;

public class MemberWithAreaDTO {
	private String id;
	private String area;
	
	public MemberWithAreaDTO(String id, String area) {
		
		this.id = id;
		this.area = area;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	
}
