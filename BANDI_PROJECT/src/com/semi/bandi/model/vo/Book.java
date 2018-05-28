package com.semi.bandi.model.vo;
import java.io.Serializable;
import java.sql.Date;

public class Book implements Serializable
{
	// Port Number and Count;
	private static final long serialVersionUID = 80891L;
	
	private int    mBook_Uid;  // Primary Key  [1]
	private String mISBN;    // Unique Key   [2]
	private String mTitle;   // Title        [3]
	private int    mPrice;   // Price        [4]
	private String mWriterCode;// WriterCode [5]
	private int    mQuantity;	  // Quantity for Book [6]
	private String mOrigin;  //  Inner or Outer [7]
	private Date   mIssueDate; // When Issue Book [8]
	private String mGenreCode; // GenreCode      [9]
	private String mIntroduceBook; // Introduce about Book [10]
	private String mImagePath;    // about Image Name [11]
	private int    mPage;         // How many page for book [12]
	private String mPublisher;    // Publisher        [13]
	
	public Book(){}
	
	public Book(int mBook_Uid, String mISBN, String mTitle, int mPrice, String mWriterCode, int mQuantity, String mOrigin,
			Date mIssueDate, String mGenreCode, String mIntroduceBook, String mImagePath, int mPage,
			String mPublisher) {
		super();
		this.mBook_Uid = mBook_Uid;
		this.mISBN = mISBN;
		this.mTitle = mTitle;
		this.mPrice = mPrice;
		this.mWriterCode = mWriterCode;
		this.mQuantity = mQuantity;
		this.mOrigin = mOrigin;
		this.mIssueDate = mIssueDate;
		this.mGenreCode = mGenreCode;
		this.mIntroduceBook = mIntroduceBook;
		this.mImagePath = mImagePath;
		this.mPage = mPage;
		this.mPublisher = mPublisher;
	}
	
	public Book(String mISBN, String mTitle, int mPrice, String mWriterCode, int mQuantity, String mOrigin,
			Date mIssueDate, String mGenreCode, String mIntroduceBook, String mImagePath, int mPage,
			String mPublisher) {
		super();
		this.mISBN = mISBN;
		this.mTitle = mTitle;
		this.mPrice = mPrice;
		this.mWriterCode = mWriterCode;
		this.mQuantity = mQuantity;
		this.mOrigin = mOrigin;
		this.mIssueDate = mIssueDate;
		this.mGenreCode = mGenreCode;
		this.mIntroduceBook = mIntroduceBook;
		this.mImagePath = mImagePath;
		this.mPage = mPage;
		this.mPublisher = mPublisher;
	}
	
	// For ORACLE [DATE TYPE] . If use this constructor, Should using String date, and Primary key is Next val.
	public Book(String mISBN, String mTitle, int mPrice, String mWriterCode, int mQuantity, String mOrigin,
			String mGenreCode, String mIntroduceBook, String mImagePath, int mPage, String mPublisher) {
		super();
		this.mISBN = mISBN;
		this.mTitle = mTitle;
		this.mPrice = mPrice;
		this.mWriterCode = mWriterCode;
		this.mQuantity = mQuantity;
		this.mOrigin = mOrigin;
		this.mGenreCode = mGenreCode;
		this.mIntroduceBook = mIntroduceBook;
		this.mImagePath = mImagePath;
		this.mPage = mPage;
		this.mPublisher = mPublisher;
	}

	public int getmBook_UID() {
		return mBook_Uid;
	}

	public void setmBook_UID(int mBook_Uid) {
		this.mBook_Uid = mBook_Uid;
	}

	public String getmISBN() {
		return mISBN;
	}

	public void setmISBN(String mISBN) {
		this.mISBN = mISBN;
	}

	public String getmTitle() {
		return mTitle;
	}

	public void setmTitle(String mTitle) {
		this.mTitle = mTitle;
	}

	public int getmPrice() {
		return mPrice;
	}

	public void setmPrice(int mPrice) {
		this.mPrice = mPrice;
	}

	public String getmWriterCode() {
		return mWriterCode;
	}

	public void setmWriterCode(String mWriterCode) {
		this.mWriterCode = mWriterCode;
	}

	public int getmQuantity() {
		return mQuantity;
	}

	public void setmQuantity(int mQuantity) {
		this.mQuantity = mQuantity;
	}

	public String getmOrigin() {
		return mOrigin;
	}

	public void setmOrigin(String mOrigin) {
		this.mOrigin = mOrigin;
	}

	public Date getmIssueDate() {
		return mIssueDate;
	}

	public void setmIssueDate(Date mIssueDate) {
		this.mIssueDate = mIssueDate;
	}

	public String getmGenreCode() {
		return mGenreCode;
	}

	public void setmGenreCode(String mGenreCode) {
		this.mGenreCode = mGenreCode;
	}

	public String getmIntroduceBook() {
		return mIntroduceBook;
	}

	public void setmIntroduceBook(String mIntroduceBook) {
		this.mIntroduceBook = mIntroduceBook;
	}

	public String getmImagePath() {
		return mImagePath;
	}

	public void setmImagePath(String mImagePath) {
		this.mImagePath = mImagePath;
	}

	public int getmPage() {
		return mPage;
	}

	public void setmPage(int mPage) {
		this.mPage = mPage;
	}

	public String getmPublisher() {
		return mPublisher;
	}

	public void setmPublisher(String mPublisher) {
		this.mPublisher = mPublisher;
	}

	@Override
	public String toString() {
		return "Book [mBook_Uid=" + mBook_Uid + ", mISBN=" + mISBN + ", mTitle=" + mTitle + ", mPrice=" + mPrice
				+ ", mWriterCode=" + mWriterCode + ", mQuantity=" + mQuantity + ", mOrigin=" + mOrigin + ", mIssueDate="
				+ mIssueDate + ", mGenreCode=" + mGenreCode + ", mIntroduceBook=" + mIntroduceBook + ", mImagePath="
				+ mImagePath + ", mPage=" + mPage + ", mPublisher=" + mPublisher + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((mGenreCode == null) ? 0 : mGenreCode.hashCode());
		result = prime * result + ((mISBN == null) ? 0 : mISBN.hashCode());
		result = prime * result + ((mImagePath == null) ? 0 : mImagePath.hashCode());
		result = prime * result + ((mIntroduceBook == null) ? 0 : mIntroduceBook.hashCode());
		result = prime * result + ((mIssueDate == null) ? 0 : mIssueDate.hashCode());
		result = prime * result + mBook_Uid;
		result = prime * result + ((mOrigin == null) ? 0 : mOrigin.hashCode());
		result = prime * result + mPage;
		result = prime * result + mPrice;
		result = prime * result + ((mPublisher == null) ? 0 : mPublisher.hashCode());
		result = prime * result + mQuantity;
		result = prime * result + ((mTitle == null) ? 0 : mTitle.hashCode());
		result = prime * result + ((mWriterCode == null) ? 0 : mWriterCode.hashCode());
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
		Book other = (Book) obj;
		if (mGenreCode == null) {
			if (other.mGenreCode != null)
				return false;
		} else if (!mGenreCode.equals(other.mGenreCode))
			return false;
		if (mISBN == null) {
			if (other.mISBN != null)
				return false;
		} else if (!mISBN.equals(other.mISBN))
			return false;
		if (mImagePath == null) {
			if (other.mImagePath != null)
				return false;
		} else if (!mImagePath.equals(other.mImagePath))
			return false;
		if (mIntroduceBook == null) {
			if (other.mIntroduceBook != null)
				return false;
		} else if (!mIntroduceBook.equals(other.mIntroduceBook))
			return false;
		if (mIssueDate == null) {
			if (other.mIssueDate != null)
				return false;
		} else if (!mIssueDate.equals(other.mIssueDate))
			return false;
		if (mBook_Uid != other.mBook_Uid)
			return false;
		if (mOrigin == null) {
			if (other.mOrigin != null)
				return false;
		} else if (!mOrigin.equals(other.mOrigin))
			return false;
		if (mPage != other.mPage)
			return false;
		if (mPrice != other.mPrice)
			return false;
		if (mPublisher == null) {
			if (other.mPublisher != null)
				return false;
		} else if (!mPublisher.equals(other.mPublisher))
			return false;
		if (mQuantity != other.mQuantity)
			return false;
		if (mTitle == null) {
			if (other.mTitle != null)
				return false;
		} else if (!mTitle.equals(other.mTitle))
			return false;
		if (mWriterCode == null) {
			if (other.mWriterCode != null)
				return false;
		} else if (!mWriterCode.equals(other.mWriterCode))
			return false;
		return true;
	}
	
}
