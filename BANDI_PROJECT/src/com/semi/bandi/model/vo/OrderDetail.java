package com.semi.bandi.model.vo;

import java.sql.Date;

public class OrderDetail
{
	String orderUID;
	int userUID;
	Date orderDate;
	String shipping;
	String receiver;
	String shippingSate;
	
	public OrderDetail(){}

	public OrderDetail(String orderUID, int userUID, Date orderDate, String shipping, String receiver,
			String shippingSate) {
		super();
		this.orderUID = orderUID;
		this.userUID = userUID;
		this.orderDate = orderDate;
		this.shipping = shipping;
		this.receiver = receiver;
		this.shippingSate = shippingSate;
	}
	
	public OrderDetail(int userUID, String shipping, String receiver, String shippingSate) {
		super();
		this.userUID = userUID;
		this.shipping = shipping;
		this.receiver = receiver;
		this.shippingSate = shippingSate;
	}

	public String getOrderUID() {
		return orderUID;
	}

	public void setOrderUID(String orderUID) {
		this.orderUID = orderUID;
	}

	public int getUserUID() {
		return userUID;
	}

	public void setUserUID(int userUID) {
		this.userUID = userUID;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public String getShipping() {
		return shipping;
	}

	public void setShipping(String shipping) {
		this.shipping = shipping;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public String getShippingSate() {
		return shippingSate;
	}

	public void setShippingSate(String shippingSate) {
		this.shippingSate = shippingSate;
	}

	@Override
	public String toString() {
		return "OrderTable [orderUID=" + orderUID + ", userUID=" + userUID + ", orderDate=" + orderDate + ", shipping="
				+ shipping + ", receiver=" + receiver + ", shippingSate=" + shippingSate + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((orderDate == null) ? 0 : orderDate.hashCode());
		result = prime * result + ((orderUID == null) ? 0 : orderUID.hashCode());
		result = prime * result + ((receiver == null) ? 0 : receiver.hashCode());
		result = prime * result + ((shipping == null) ? 0 : shipping.hashCode());
		result = prime * result + ((shippingSate == null) ? 0 : shippingSate.hashCode());
		result = prime * result + userUID;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		OrderDetail other = (OrderDetail) obj;
		if (orderDate == null) {
			if (other.orderDate != null)
				return false;
		} else if (!orderDate.equals(other.orderDate))
			return false;
		if (orderUID == null) {
			if (other.orderUID != null)
				return false;
		} else if (!orderUID.equals(other.orderUID))
			return false;
		if (receiver == null) {
			if (other.receiver != null)
				return false;
		} else if (!receiver.equals(other.receiver))
			return false;
		if (shipping == null) {
			if (other.shipping != null)
				return false;
		} else if (!shipping.equals(other.shipping))
			return false;
		if (shippingSate == null) {
			if (other.shippingSate != null)
				return false;
		} else if (!shippingSate.equals(other.shippingSate))
			return false;
		if (userUID != other.userUID)
			return false;
		return true;
	}
	
	
}
