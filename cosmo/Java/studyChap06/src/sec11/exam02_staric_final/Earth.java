package sec11.exam02_staric_final;

public class Earth {
	static final double EARTH_RADIUS=6400;
	static final double EARTH_SURFACE_AREA;
	static {
		EARTH_SURFACE_AREA=4*Math.PI*EARTH_RADIUS*EARTH_RADIUS;
	}//static block에서 EARTH_SURFACE_AREA를 초기화함

}
