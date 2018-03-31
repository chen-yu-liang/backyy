package com.lv.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPFile;
import org.apache.commons.net.ftp.FTPReply;

public class Ftp {
	
	private static FTPClient ftp = null; 
	private static String host="103.31.53.156";
	private static int port=21;
	private static String username="dbkj";
	private static String password="dbkj_admin";
	
	/**
	 * ********************************************************
	 * @Title: download
	 * @Description: 从ftp下载文件
	 * @param directory ftp文件路径
	 * @param downloadFile 下载的文件名
	 * @param saveFile 下载文件存放路径
	 * @throws Exception void
	 * @author ZZ
	 * @date 2017-2-21 下午09:49:52
	 ********************************************************
	 */
	public void download(String directory, String downloadFile,String saveFile) throws Exception {
		try {

	    	ftp.changeWorkingDirectory(directory);//转移到FTP服务器目录  
	        FTPFile[] fs = ftp.listFiles();  
	        boolean hasFile = false;
	        for(FTPFile ff:fs){  
	            if(ff.getName().equals(downloadFile)){ 
	                hasFile = true;
	                File localFile = new File(saveFile);
	                if (!localFile.exists()) {
	                	localFile.mkdirs();
	                }
	                OutputStream is = new FileOutputStream(localFile+"/"+downloadFile);   
	                ftp.retrieveFile(ff.getName(), is);  
	                is.close();  
	            }  
	        }
	        if (!hasFile){
	            throw new Exception("没有在指定目录"+directory+"找到需要下载的文件"+downloadFile); 
	        }
		} catch (Exception e){
		    throw new Exception(e); 
		} finally {
	    	disConn();
	    }
	}
	
	/**
	 * 上传文件
	 * 
	 */
	public void upload(String directory,String uploadFile) throws Exception {
		//方法2：
		File file = new File(uploadFile);
		ftp.changeWorkingDirectory(directory);
		if(file.isDirectory()){         
            ftp.makeDirectory(file.getName());              
            ftp.changeWorkingDirectory(file.getName());    
            String[] files = file.list();           
            for (int i = 0; i < files.length; i++) {    
                File file1 = new File(file.getPath()+"\\"+files[i] );    
                if(file1.isDirectory()){    
                    upload(directory,file.getPath()+"\\"+files[i] );    
                    ftp.changeToParentDirectory();    
                }else{                  
                    File file2 = new File(file.getPath()+"\\"+files[i]);    
                    FileInputStream input = new FileInputStream(file2);    
                    ftp.storeFile(file2.getName(), input);    
                    input.close();                          
                }               
            }    
        }else{    
            File file2 = new File(file.getPath());    
            FileInputStream input = new FileInputStream(file2);    
            ftp.storeFile(file2.getName(), input);    
            input.close();      
        }  
		

	}
	
	/**
	 * 断开ftp连接
	 */
	public void disConn() throws Exception{
		try {
	    	if (ftp.isConnected()) {
	        	ftp.logout();
	            ftp.disconnect();   
	        }
		} catch (Exception e) {   
			throw new Exception("断开ftp连接失败"); 
	    }
	}
	
	/**
	 * ********************************************************
	 * @Title: getConnect
	 * @Description: 连接Ftp
	 * @param host
	 * @param port
	 * @param username
	 * @param password
	 * @throws Exception void
	 * @author ZZ
	 * @date 2017-2-21 下午09:51:15
	 ********************************************************
	 */
	public void getConnect(String host, int port, String username, String password) throws Exception {
		try {
			ftp = new FTPClient(); 
	    	ftp.connect(host, port);//连接FTP服务器    
	    	ftp.login(username, password);//登录    
	    	int reply = ftp.getReplyCode();   
	        if (!FTPReply.isPositiveCompletion(reply)) { 
	        	disConn(); 
	        	throw new IOException();
	        } 
	  
		} catch (Exception e){
			System.out.print(e.getMessage()+e);
			throw new Exception("连接ftp服务器失败,请检查主机[" + host + "],端口[" + port   
	                + "],用户名[" + username + "],密码[" + password   
	                + "]是否正确,以上信息正确的情况下请检查网络连接是否正常或者请求被防火墙拒绝."); 
		}
	}
	
	//上传ftp
	public boolean uploadFiles(String  uploadFile){
		boolean flag=false;
		try {
			this.getConnect(host, port, username, password);
			//上传
			this.upload("/dbkj", uploadFile);
			flag=true;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("上传异常");
		}
		return flag;
	}
	//从ftp下载
	public boolean downloadFiles(String downloadFile,String saveFile){
		boolean flag=false;
		try {
			this.getConnect(host, port, username, password);
			//下载
			this.download("/dbkj", downloadFile, saveFile);
			flag=true;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("下载异常");
		}
		return flag;
	}
	
	
	public static void main(String[] args) {
		Ftp de = new Ftp();
		try {
			de.getConnect(host, port, username, password);
//			//下载
//			de.download("/dbkj", "2017022702.zip", "e:/");
			de.downloadFiles("2017022702.zip", "e:/");
			
			//上传
//			de.upload("/test", "e:/demo/FileToZip.java");
//			de.uploadFiles("D:/quickmark/2017022702.zip");
		} catch (Exception e) {
			
		}
		System.out.println("运行结束!!!");
	}
	
}
