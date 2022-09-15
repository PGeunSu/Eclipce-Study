package dao;

import java.util.ArrayList;
import dto.Book;

public class BookRepository {
	
	//상품 목록을 저장하기 위한 ArrayList<Product> 객체 타입의 변수 lsitOfProducts를 작성한다.
	
private ArrayList<Book> listOfProducts = new ArrayList<Book>();
private static BookRepository instance = new BookRepository();

public static BookRepository getInstance() {
	return instance;
}
	
	public BookRepository() {
		Book book1= new Book("ISBN1234"," HTML5+CSS3 ", 15000);
	      book1.setAuthor("황재호");
	      book1.setDescription("워드나 PPT 문서를 만들 수 있나요? 그러면 문제 없습니다. 지금 바로 웹페이지 제작에 도전해보세요. 지금 당장 컴퓨터가 없어도 괜찮습니다. 코드와 실행 화면이 바로 보여서 눈으로만 읽어도 어떻게 작동하는지 쉽게 파악할 수 있는 것은 기본이고, 중간중간 퀴즈를 추가하여 재미있게 게임하듯 복습할 수 있습니다.");
	      book1.setPublisher("한빛미디어");
	      book1.setCategory("Hello Coding");
	      book1.setUnitsInStock(1000);
	      book1.setTotalPages(288);
	      book1.setReleaseDate("2018/03/02");
	      
	      Book book2= new Book("ISBN1235"," 쉽게 배우는 자바 프로그래밍 ", 27000);
	      book2.setAuthor("우종중");
	      book2.setDescription("객체 지향의 핵심과 자바의 현대적 기능을 충실히 다루면서도초보자가 쉽게 학습할 수 있게 구성했습니다. 시각화 도구를 활용한 개념 설명과 군더더기 없는 핵심 코드를 통해 개념과 구현을 한 흐름으로 학습할 수 있습니다. 또한 ‘기초 체력을 다지는 예제 → 셀프 테스트 → 생각을 논리적으로 정리하며 한 단계씩 풀어 가는 도전 과제 → 스토리가 가미된 흥미로운 프로그래밍 문제’ 등을 통해 프로그래밍 실력을 차근차근 끌어올릴 수 있습니다");
	      book2.setPublisher("한빛아카데미");
	      book2.setCategory("IT모바일");
	      book2.setUnitsInStock(1000);
	      book2.setTotalPages(692);
	      book2.setReleaseDate("2017/08/02");
	      
	      Book book3= new Book("ISBN1236"," 스프링4 입문 ", 27000);
	      book3.setAuthor("하세가와 유이치, 오오노 와타루, 토키 코헤이(권은철, 전민수");
	      book3.setDescription("스프링은 단순히 사용 방법만 익히는 것보다 아키텍처를 어떻게 이해하고 설계하는지가 더 중요합니다. 예제를 복사해 붙여넣는 식으로는 실제 개발에서 스프링을 제대로 활용할 수 없습니다. 이 책에서는 웹 애플리케이션의 기초를 다지고 스프링 코어를 살펴보며 클라우드 네이티브 입문까지 다룹니다. 이제 막 실무에 뛰어든 웹 애플리케이션 초급자나 개발 경험은 있지만 스프링은 사용해본 적 없는 분을 대상으로 가능한 한 쉽게 설명합니다");
	      book3.setPublisher("한빛미디어");
	      book3.setCategory("Hello Coding");
	      book3.setUnitsInStock(1000);
	      book3.setTotalPages(520);
	      book3.setReleaseDate("2017/11/02");
		
	    
	    listOfProducts.add(book1);
	    listOfProducts.add(book2);
	    listOfProducts.add(book3);
	  
	    //기본생성자를 만든 후 3개의 상품정보를 설정하고 ArrayList<Product> 객체 타입의 변수 listOfProduct에 저장하도록 작성
	    
	}
	    public ArrayList<Book> getAllProducts(){
	    	
	    	return listOfProducts;
	    	//객체 타입의 변수 listofProducts에 저장된 모든 상품 목록을 가져오는 getAllProductc()메소드를 작성
	}
	    
	  
	    public Book getBookById(String bookId) {
	    	Book bookById = null;
	    	
	    	for(int i = 0; i<listOfProducts.size(); i++) {
	    		Book book = listOfProducts.get(i);
	    		if(book != null && book.getBookId() != null && book.getBookId().equals(bookId)) {
	    			bookById= book;
	    			break;
	    		}
	    	}
	    	return bookById;
	    }
	    
	    public void addBook(Book book) {
	    	listOfProducts.add(book);
	    }
	    
	    
	
	

}
