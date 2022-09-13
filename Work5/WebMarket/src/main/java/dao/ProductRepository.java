package dao;

import java.util.ArrayList;
import dto.Product;

public class ProductRepository {
	
	//상품 목록을 저장하기 위한 ArrayList<Product> 객체 타입의 변수 lsitOfProducts를 작성한다.
	
private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	
	public ProductRepository() {
		Product phone = new Product("P1234","iPhone 6s", 800000);
		phone.setDescription("4.7-inch, 1334x750 Renina HD display, 8-megapixel iSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		
		Product notebook = new Product("P1235", "LG PC 그램", 1500000);
	    notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
	    notebook.setCategory("Notebook");
	    notebook.setManufacturer("LG");
	    notebook.setUnitsInStock(1000);
	    notebook.setCondition("Refurbished");

	    Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
	    tablet.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
	    tablet.setCategory("Tablet");
	    tablet.setManufacturer("Samsung");
	    tablet.setUnitsInStock(1000);
	    tablet.setCondition("Old");	
	    
	    listOfProducts.add(phone);
	    listOfProducts.add(notebook);
	    listOfProducts.add(tablet);
	    //기본생성자를 만든 후 3개의 상품정보를 설정하고 ArrayList<Product> 객체 타입의 변수 listOfProduct에 저장하도록 작성
	    
	}
	    public ArrayList<Product> getAllProducts(){
	    	
	    	return listOfProducts;
	    	//객체 타입의 변수 listofProducts에 저장된 모든 상품 목록을 가져오는 getAllProductc()메소드를 작성
	}
	    
	    
	
	

}
