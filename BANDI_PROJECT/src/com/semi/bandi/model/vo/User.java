package com.semi.bandi.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class User implements Serializable 
{
	private static final long serialVersionUID = 80891L;
	
	private int mUser_UID; // [1] Primary key
	private String mEmail; // [2] Email [char 30]
	private String mPassword; // [3] Password [char 300]
	private String mNickName; // [4] Nick Name [char 10]
	private int mIdentified; // [5] Identified [int 6]
	private int mPhone;      // [6] Phone Number [13 ~ 15]
	private String mAddress; // [7] Address [char 100]
	private char mGender;   // [8] gender [char 1]
	private String mGrade;  // [9] grade [char 3]
	private String mJob;   //  [10] job [char 3]
	private int mPoint;		// [12] point 
	
	private Date mJoinDate; //[11] Join Date [Date]
	
	public User(){	}
	
	public User(int mUser_UID, String mEmail, String mPassword, String mNickName, int mIdentified, int mPhone,
			String mAddress, char mGender, String mGrade, String mJob) {
		super();
		this.mUser_UID = mUser_UID;
		this.mEmail = mEmail;
		this.mPassword = mPassword;
		this.mNickName = mNickName;
		this.mIdentified = mIdentified;
		this.mPhone = mPhone;
		this.mAddress = mAddress;
		this.mGender = mGender;
		this.mGrade = mGrade;
		this.mJob = mJob;
	}
	
	public Date getmJoinDate() {
		return mJoinDate;
	}

	public int getmUser_UID() {
		return mUser_UID;
	}

	public void setmUser_UID(int mUser_UID) {
		this.mUser_UID = mUser_UID;
	}

	public String getmEmail() {
		return mEmail;
	}

	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}

	public String getmPassword() {
		return mPassword;
	}

	public void setmPassword(String mPassword) {
		this.mPassword = mPassword;
	}

	public String getmNickName() {
		return mNickName;
	}

	public void setmNickName(String mNickName) {
		this.mNickName = mNickName;
	}

	public int getmIdentified() {
		return mIdentified;
	}

	public void setmIdentified(int mIdentified) {
		this.mIdentified = mIdentified;
	}

	public int getmPhone() {
		return mPhone;
	}

	public void setmPhone(int mPhone) {
		this.mPhone = mPhone;
	}

	public String getmAddress() {
		return mAddress;
	}

	public void setmAddress(String mAddress) {
		this.mAddress = mAddress;
	}

	public char getmGender() {
		return mGender;
	}

	public void setmGender(char mGender) {
		this.mGender = mGender;
	}

	public String getmGrade() {
		return mGrade;
	}

	public void setmGrade(String mGrade) {
		this.mGrade = mGrade;
	}

	public String getmJob() {
		return mJob;
	}

	public void setmJob(String mJob) {
		this.mJob = mJob;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public int getmPoint() {
		return mPoint;
	}

	public void setmPoint(int mPoint) {
		this.mPoint = mPoint;
	}
	
	@Override
	public String toString() {
		return "User [mUser_UID=" + mUser_UID + ", mEmail=" + mEmail + ", mPassword=" + mPassword + ", mNickName="
				+ mNickName + ", mIdentified=" + mIdentified + ", mPhone=" + mPhone + ", mAddress=" + mAddress
				+ ", mGender=" + mGender + ", mGrade=" + mGrade + ", mJob=" + mJob + ", mPoint=" + mPoint
				+ ", mJoinDate=" + mJoinDate + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((mAddress == null) ? 0 : mAddress.hashCode());
		result = prime * result + ((mEmail == null) ? 0 : mEmail.hashCode());
		result = prime * result + mGender;
		result = prime * result + ((mGrade == null) ? 0 : mGrade.hashCode());
		result = prime * result + mIdentified;
		result = prime * result + ((mJob == null) ? 0 : mJob.hashCode());
		result = prime * result + ((mJoinDate == null) ? 0 : mJoinDate.hashCode());
		result = prime * result + ((mNickName == null) ? 0 : mNickName.hashCode());
		result = prime * result + ((mPassword == null) ? 0 : mPassword.hashCode());
		result = prime * result + mPhone;
		result = prime * result + mPoint;
		result = prime * result + mUser_UID;
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
		User other = (User) obj;
		if (mAddress == null) {
			if (other.mAddress != null)
				return false;
		} else if (!mAddress.equals(other.mAddress))
			return false;
		if (mEmail == null) {
			if (other.mEmail != null)
				return false;
		} else if (!mEmail.equals(other.mEmail))
			return false;
		if (mGender != other.mGender)
			return false;
		if (mGrade == null) {
			if (other.mGrade != null)
				return false;
		} else if (!mGrade.equals(other.mGrade))
			return false;
		if (mIdentified != other.mIdentified)
			return false;
		if (mJob == null) {
			if (other.mJob != null)
				return false;
		} else if (!mJob.equals(other.mJob))
			return false;
		if (mJoinDate == null) {
			if (other.mJoinDate != null)
				return false;
		} else if (!mJoinDate.equals(other.mJoinDate))
			return false;
		if (mNickName == null) {
			if (other.mNickName != null)
				return false;
		} else if (!mNickName.equals(other.mNickName))
			return false;
		if (mPassword == null) {
			if (other.mPassword != null)
				return false;
		} else if (!mPassword.equals(other.mPassword))
			return false;
		if (mPhone != other.mPhone)
			return false;
		if (mPoint != other.mPoint)
			return false;
		if (mUser_UID != other.mUser_UID)
			return false;
		return true;
	}

}
