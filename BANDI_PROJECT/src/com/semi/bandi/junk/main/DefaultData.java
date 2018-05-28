package com.semi.bandi.junk.main;

import com.semi.bandi.model.vo.Book;

public class DefaultData 
{
	public Book[] returnBookData()
	{
		Book[] bookArray = new Book[10];
		String junFolder = "junk/";
		
		for(int i =0; i <10; i++)
		{
			bookArray[i] = new Book();
			bookArray[i].setmBook_UID(i);
		}
		
		bookArray[0].setmImagePath(junFolder +"book1.jpg");
		bookArray[0].setmTitle("The Shape of Water");
		bookArray[0].setmPrice(23000);
		
		bookArray[1].setmImagePath( junFolder +"book2.jpg");
		bookArray[2].setmImagePath(junFolder +"book101.jpg");
		bookArray[3].setmImagePath(junFolder +"book23.jpg");
		bookArray[4].setmImagePath(junFolder + "book3.jpg");
		bookArray[5].setmImagePath(junFolder + "book4.jpg");
		bookArray[6].setmImagePath(junFolder + "book5.jpg");
		bookArray[7].setmImagePath(junFolder + "book52.jpg");
		bookArray[8].setmImagePath(junFolder + "book55.jpg");
		bookArray[9].setmImagePath(junFolder + "book6.jpg");
		
		return bookArray;
	}
	
	public Book[] returnBestSeller()
	{
		Book[] bookArray = new Book[8];
		String junFolder = "junk/";
		for(int i =0; i <8; i++) bookArray[i] = new Book();
		
		bookArray[0].setmImagePath(junFolder +"book1.jpg");
		bookArray[0].setmTitle("The Shape of Water");
		bookArray[0].setmPrice(23000);
		
		bookArray[1].setmImagePath( junFolder +"book7.jpg");
		bookArray[1].setmTitle("소아과 의사는 자기아이에게 직접 약을 먹이지 않는다.");
		bookArray[1].setmPrice(12000);
		
		bookArray[2].setmImagePath(junFolder +"book101.jpg");
		bookArray[2].setmTitle("Java의 정석");
		bookArray[2].setmPrice(33000);
		
		bookArray[3].setmImagePath(junFolder +"book55.jpg");
		bookArray[3].setmTitle("호르몬 다이어트");
		bookArray[3].setmPrice(22000);
		
		bookArray[4].setmImagePath(junFolder + "book3.jpg");
		bookArray[4].setmTitle("언어의 온도");
		bookArray[4].setmPrice(8000);
		
		bookArray[5].setmImagePath(junFolder + "book4.jpg");
		bookArray[5].setmTitle("탐켈트,  고통에 답하다");
		bookArray[5].setmPrice(27000);
		
		bookArray[6].setmImagePath(junFolder + "book5.jpg");
		bookArray[6].setmTitle("하루 3분 패턴 영어");
		bookArray[6].setmPrice(11000);
		
		bookArray[7].setmImagePath(junFolder + "book52.jpg");
		bookArray[7].setmTitle("개미 마인드");
		bookArray[7].setmPrice(19000);
		return bookArray;
	}
}
