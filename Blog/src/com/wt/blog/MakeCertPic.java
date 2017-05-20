package com.wt.blog;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

import javax.imageio.ImageIO;

/**
 * ������֤��
 * @author dell
 *
 */
public class MakeCertPic {
	private char mapTable[]={
			'a','b','c','d','e','f',
			'g','h','i','j','k',
			'm','n','p','q','r',
			's','t','u','v','w','x',
			'y','z','0','2','3','4','5',
			'6','7','8','9'};
	public String getCertPic(int width,int height,OutputStream os){
		if(width==0){
			width=60;
		}
		if(height==0){
			height=20;
		}
		BufferedImage image =new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
		//��ȡͼ��������(ע�������)
		Graphics g = image.getGraphics();
		//�趨����ɫ
		g.setColor(new Color(0xDCDCDC));
		g.fillRect(0, 0, width, height);
		//���߿�
		g.setColor(Color.black);
		g.drawRect(0, 0, width-1, height-1);
		//�����������֤��
		String strEnsure = "";
		//4����4λ��֤�룬�����������λ����֤�룬��Ӵ����֡�
		for(int i=0;i<4;i++){
			strEnsure += mapTable[(int)(mapTable.length*Math.random())];
		}
		//����֤����ʾ��ͼ���У����Ҫ���ɸ���λ����֤�룬����drawString���
		g.setColor(Color.black);
		g.setFont(new Font("Atlantic Inline",Font.PLAIN,18));
		String str = strEnsure.substring(0,1);
		g.drawString(str, 8, 17);
		str = strEnsure.substring(1,2);
		g.drawString(str,20,15);
		str = strEnsure.substring(2,3);
		g.drawString(str,35,18);
		str = strEnsure.substring(3,4);
		g.drawString(str,45,15);
		//�������20�����ŵ�
		Random rand = new Random();
		for(int i=0;i<20;i++){
			int x= rand.nextInt(width);
			int y=rand.nextInt(height);
			g.drawOval(x, y, 1, 1);
		}
		//�ͷ�ͼ��
		g.dispose();
		try {
			//���ͼ��ҳ��
			ImageIO.write(image,"JPEG",os);
		} catch (IOException e) {
			return "";
		}
		return strEnsure;
	}
}