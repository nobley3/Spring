package Practice;

public class Food {

	String menu;
	String category;
	 
	public Food() {
		this("menu","카테고리");
	}

	public String getMenu() {
		return menu;
	}

	public void setMenu(String menu) {
		this.menu = menu;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Food(String menu, String category) {
		super();
		this.menu = menu;
		this.category = category;
	}

	@Override
	public String toString() {
		return "Food [menu=" + menu + ", category=" + category + "]";
	}
	
	public void printInfo() {
		System.out.println("menu=" +menu);
		System.out.println("category=" +category);
	}
	
	
	
}
