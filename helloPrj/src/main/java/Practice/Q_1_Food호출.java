package Practice;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class Q_1_Food호출 {

	public static void main(String[] args) throws ClassNotFoundException, NoSuchMethodException, SecurityException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
		Food f = new Food();
		//f.printInfo();
		
		Class clazz = Class.forName("com.acorn.web.Food");
		
		Method method = clazz.getDeclaredMethod("printInfo");
		method.invoke(f);
	}

}
