package com.lv.util;


import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.ResourceBundle;



public class ChangeType {
	
	/**
	 * ********************************************************
	 * @Title: get
	 * @Description: 传送信息
	 * @param data
	 * @return String
	 * @author DoDo
	 * @date 2016-7-22 下午6:26:35
	 ********************************************************
	 */
	public String get(String data){
		ResourceBundle resource = ResourceBundle.getBundle("path");  
		String ip = resource.getString("ip");
		int port = Integer.parseInt(resource.getString("port"));
		
		String result = "";
		try {

            // 创建一个流套接字并将其连接到指定 IP 地址的指定端口号(本处是本机)
			Socket socket =new Socket(ip,port);
            // 60s超时
            socket.setSoTimeout(60000);
 
            /** 发送客户端准备传输的信息 */
            // 由Socket对象得到输出流，并构造PrintWriter对象
            PrintWriter printWriter =new PrintWriter(socket.getOutputStream(),true);
            // 将输入读入的字符串输出到Server

            BufferedReader sysBuff =new BufferedReader(new InputStreamReader(new ByteArrayInputStream(data.getBytes())));
            // 
            printWriter.println(sysBuff.readLine());
            // 刷新输出流，使Server马上收到该字符串
            printWriter.flush();
 
            /** 用于获取服务端传输来的信息 */
            // 由Socket对象得到输入流，并构造相应的BufferedReader对象  
            BufferedReader bufferedReader =new BufferedReader(new InputStreamReader(socket.getInputStream()));
            // 输入读入一字符串
            result = bufferedReader.readLine();
            System.out.println("Server say : " + result);
 
            /** 关闭Socket*/
            
            printWriter.close();
            bufferedReader.close();
            socket.close();
        }catch (Exception e) {
            System.out.println("Exception:" + e);
        }
		
		return result;
	}
}