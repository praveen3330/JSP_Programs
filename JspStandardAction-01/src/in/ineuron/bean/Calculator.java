package in.ineuron.bean;

public class Calculator {
	
	static {
		System.out.println("Calculator class is loaded");
	}
	
	public Calculator() {
		System.out.println("Object is created for calculator class");
	}
	
	public int squareIt(int x) {
		return x*x;
	}
    
}
