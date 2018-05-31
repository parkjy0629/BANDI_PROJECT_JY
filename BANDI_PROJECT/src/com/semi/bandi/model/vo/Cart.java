package com.semi.bandi.model.vo;

public class Cart 
{
	int userUID;
	int bookUID;
	int bookQuantity;
	String image;
	int price;
	String title;
	
	public Cart(){}

	public Cart(int bookUID, int bookQuantity) {
		super();
		this.bookUID = bookUID;
		this.bookQuantity = bookQuantity;
	}

	public Cart(int userUID, int bookUID, int bookQuantity) {
		super();
		this.userUID = userUID;
		this.bookUID = bookUID;
		this.bookQuantity = bookQuantity;
	}

	public Cart(int userUID, int bookUID, int bookQuantity, String image, int price, String title) {
		super();
		this.userUID = userUID;
		this.bookUID = bookUID;
		this.bookQuantity = bookQuantity;
		this.image = image;
		this.price = price;
		this.title = title;
	}

	public int getUserUID() {
		return userUID;
	}

	public void setUserUID(int userUID) {
		this.userUID = userUID;
	}

	public int getBookUID() {
		return bookUID;
	}

	public void setBookUID(int bookUID) {
		this.bookUID = bookUID;
	}

	public int getBookQuantity() {
		return bookQuantity;
	}

	public void setBookQuantity(int bookQuantity) {
		this.bookQuantity = bookQuantity;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String bookImage) {
		this.image = bookImage;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Override
	public String toString() {
		return "Cart [userUID=" + userUID + ", bookUID=" + bookUID + ", bookQuantity=" + bookQuantity + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + bookQuantity;
		result = prime * result + bookUID;
		result = prime * result + userUID;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		Cart other = (Cart) obj;
		if (bookQuantity != other.bookQuantity) {
			return false;
		}
		if (bookUID != other.bookUID) {
			return false;
		}
		if (userUID != other.userUID) {
			return false;
		}
		return true;
	}
	
}
