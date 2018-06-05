package mo;

public class CitiesMo {

	private String cityid;
	private String provinceid;
	private int id;
	private String city;

	public String getCityid() {
		return cityid;
	}

	public void setCityid(String cityid) {
		this.cityid = cityid;
	}

	public String getProvinceid() {
		return provinceid;
	}

	public void setProvinceid(String provinceid) {
		this.provinceid = provinceid;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Override
	public String toString() {
		return "CitiesMo [cityid=" + cityid + ", provinceid=" + provinceid + ", id=" + id + ", city=" + city + "]";
	}

	
	
}
