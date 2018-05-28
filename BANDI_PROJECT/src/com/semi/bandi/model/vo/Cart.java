package com.semi.bandi.model.vo;

public class Cart 
{
	int userUID;
	int bookUID;
	int bookQuantity;
	
	public Cart(){}

	public Cart(int userUID, int bookUID, int bookQuantity) {
		super();
		this.userUID = userUID;
		this.bookUID = bookUID;
		this.bookQuantity = bookQuantity;
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
