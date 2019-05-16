package javaBean;

public class Triangle {
	public double a,b,c;
	public Triangle()
	{
		a=b=c=0;
	}
	public double getA() {
		return a;
	}
	public void setA(double a) {
		this.a = a;
	}
	public double getB() {
		return b;
	}
	public void setB(double b) {
		this.b = b;
	}
	public double getC() {
		return c;
	}
	public void setC(double c) {
		this.c = c;
	}
	/***
	 * �ж������Ƿ񹹳�������
	 * @return
	 */
	public boolean isTriangle()
	{
		return a+b>c&&a+c>b&&b+c>a;
	}
	/**
	 * ���������ܳ�
	 * @return
	 */
	public double getCircle()
	{
		return a+b+c;
	}
	/***
	 * �����������
	 * @return
	 */
	public double getArea()
	{
		double p=this.getCircle()/2;
		return Math.sqrt(p*(p-a)*(p-b)*(p-c));
	}
	
	
	

}
