package com.semi.bandi.model.vo;

import java.io.Serializable;

public class Writer implements Serializable
{
	private static final long serialVersionUID = 80891L;
	private String mWriterCode;
	private String mWriterName;
	private String mWriterIntroduce;
	
	public Writer(String mWriterCode, String mWriterName, String mWriterIntroduce) {
		super();
		this.mWriterCode = mWriterCode;
		this.mWriterName = mWriterName;
		this.mWriterIntroduce = mWriterIntroduce;
	}

	public String getmWriterCode() {
		return mWriterCode;
	}

	public void setmWriterCode(String mWriterCode) {
		this.mWriterCode = mWriterCode;
	}

	public String getmWriterName() {
		return mWriterName;
	}

	public void setmWriterName(String mWriterName) {
		this.mWriterName = mWriterName;
	}

	public String getmWriterIntroduce() {
		return mWriterIntroduce;
	}

	public void setmWriterIntroduce(String mWriterIntroduce) {
		this.mWriterIntroduce = mWriterIntroduce;
	}

	@Override
	public String toString() {
		return "Writer [mWriterCode=" + mWriterCode + ", mWriterName=" + mWriterName + ", mWriterIntroduce="
				+ mWriterIntroduce + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((mWriterCode == null) ? 0 : mWriterCode.hashCode());
		result = prime * result + ((mWriterIntroduce == null) ? 0 : mWriterIntroduce.hashCode());
		result = prime * result + ((mWriterName == null) ? 0 : mWriterName.hashCode());
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
		Writer other = (Writer) obj;
		if (mWriterCode == null) {
			if (other.mWriterCode != null)
				return false;
		} else if (!mWriterCode.equals(other.mWriterCode))
			return false;
		if (mWriterIntroduce == null) {
			if (other.mWriterIntroduce != null)
				return false;
		} else if (!mWriterIntroduce.equals(other.mWriterIntroduce))
			return false;
		if (mWriterName == null) {
			if (other.mWriterName != null)
				return false;
		} else if (!mWriterName.equals(other.mWriterName))
			return false;
		return true;
	}
	
}
