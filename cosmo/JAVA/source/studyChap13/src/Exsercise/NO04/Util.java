package Exsercise.NO04;

public class Util {
	public static <K, V> V getValue(Pair<K, V> pair, String string){
		if(pair.getKey()==string) {
			return pair.getValue();
		} else {
			return null ;
		}
	}

}
