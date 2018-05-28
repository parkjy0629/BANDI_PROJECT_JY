package com.semi.bandi.common;

/* 
 * Description : Find Line And Show String.
 * Author : pys
 * Date  : 2018 - 05 - 14
 * 
 * */

public class TestlogSystem 
{
	private static boolean turn = true;
	
	public static void showLog(boolean switched, String data)
	{
		if(switched)
		{
			System.out.print("file:" + (new Throwable()).getStackTrace()[0].getClassName() + "  line");
			System.out.println((new Throwable()).getStackTrace()[0].getLineNumber());
			System.out.println(data);
		}
	}
	
	public static void showLog(String data)
	{
		if(turn)
		{
			System.out.print("file:" + (new Throwable()).getStackTrace()[0].getClassName() + "  line");
			System.out.println((new Throwable()).getStackTrace()[0].getLineNumber());
			System.out.println(data);
		}
	}
}
