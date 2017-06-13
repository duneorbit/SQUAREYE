package org.kscb.io;

import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;

public class FileUtility {
	
	public static byte[] readFileToByteArray(File file) throws IOException{
		StringBuffer bufferedReader = new StringBuffer();
		FileInputStream is = new FileInputStream(file);
		BufferedInputStream bi = new BufferedInputStream(is);
		DataInputStream ds = new DataInputStream(bi);
		try{
			while(ds.available()!=0){
				bufferedReader.append(ds.readLine());
			}
		}finally{
			is.close();
			bi.close();
			ds.close();
		}
		return bufferedReader.toString().getBytes();
	}
	
	public static byte[] convertBlobToBytes(Blob file) throws SQLException{
		byte[] blobBytes = file.getBytes(1, (int) file.length());
		return blobBytes;
	}

}
