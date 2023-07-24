package com.construction.dbconnect;

public class SetGet {
	
	static String email;
	static int empid ,tid, pid,did;

	public static int getDid() {
		return did;
	
	}
	public static void setDid(int did) {
		SetGet.did = did;
	}

	public static int getTid() {
		return tid;
	}

	public static void setTid(int tid) {
		SetGet.tid = tid;
	}

	public static int getPid() {
		return pid;
	}

	public static void setPid(int pid) {
		SetGet.pid = pid;
	}

	public static int getEmpid() {
		return empid;
	}

	public static void setEmpid(int empid) {
		SetGet.empid = empid;
	}

	public static String getEmail() {
		return email;
	}

	public static void setEmail(String email) {
		SetGet.email = email;
	}

}
