public class GetHorukuAnimal {

	public List<String> animals;

	
	public static GetHorukuAnimal parse(String json) {
		return (GetHorukuAnimal) System.JSON.deserialize(json, GetHorukuAnimal.class);
	}
}