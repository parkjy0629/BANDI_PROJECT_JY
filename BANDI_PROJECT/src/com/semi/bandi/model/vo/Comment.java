package com.semi.bandi.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Comment implements Serializable
{
	private static final long serialVersionUID = 80891L;
	
	private int comment_UID;
	private int mUser_UID;
	private int mBook_UID;
	private double rating;
	private String comment_Content;
	private Date writedDate;
	
	public Comment(){}
	
	public Comment(int comment_UID, int mUser_UID, int mBook_UID, double rating, String comment_Content,
			Date writedDate) {
		super();
		this.comment_UID = comment_UID;
		this.mUser_UID = mUser_UID;
		this.mBook_UID = mBook_UID;
		this.rating = rating;
		this.comment_Content = comment_Content;
		this.writedDate = writedDate;
	}

	public int getComment_UID() {
		return comment_UID;
	}

	public void setComment_UID(int comment_UID) {
		this.comment_UID = comment_UID;
	}

	public int getmUser_UID() {
		return mUser_UID;
	}

	public void setmUser_UID(int mUser_UID) {
		this.mUser_UID = mUser_UID;
	}

	public int getmBook_UID() {
		return mBook_UID;
	}

	public void setmBook_UID(int mBook_UID) {
		this.mBook_UID = mBook_UID;
	}

	public double getRating() {
		return rating;
	}

	public void setRating(double rating) {
		this.rating = rating;
	}

	public String getComment_Content() {
		return comment_Content;
	}

	public void setComment_Content(String comment_Content) {
		this.comment_Content = comment_Content;
	}

	public Date getWritedDate() {
		return writedDate;
	}

	public void setWritedDate(Date writedDate) {
		this.writedDate = writedDate;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Comment [comment_UID=" + comment_UID + ", mUser_UID=" + mUser_UID + ", mBook_UID=" + mBook_UID
				+ ", rating=" + rating + ", comment_Content=" + comment_Content + ", writedDate=" + writedDate + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((comment_Content == null) ? 0 : comment_Content.hashCode());
		result = prime * result + comment_UID;
		result = prime * result + mBook_UID;
		result = prime * result + mUser_UID;
		long temp;
		temp = Double.doubleToLongBits(rating);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((writedDate == null) ? 0 : writedDate.hashCode());
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
		Comment other = (Comment) obj;
		if (comment_Content == null) {
			if (other.comment_Content != null)
				return false;
		} else if (!comment_Content.equals(other.comment_Content))
			return false;
		if (comment_UID != other.comment_UID)
			return false;
		if (mBook_UID != other.mBook_UID)
			return false;
		if (mUser_UID != other.mUser_UID)
			return false;
		if (Double.doubleToLongBits(rating) != Double.doubleToLongBits(other.rating))
			return false;
		if (writedDate == null) {
			if (other.writedDate != null)
				return false;
		} else if (!writedDate.equals(other.writedDate))
			return false;
		return true;
	}
	
}
