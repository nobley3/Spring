package Practice;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class Q_1_Food클래스정보출력 {

	public static void main(String[] args) throws ClassNotFoundException {
		Class clazz = Class.forName("com.acorn.web.Food");
		Field[] fields = clazz.getDeclaredFields();
		for(Field f : fields) {
			System.out.println(f);
		}
		Method[] methods = clazz.getDeclaredMethods();
		for(Method m : methods) {
			System.out.println(m);
		}

	}

}
