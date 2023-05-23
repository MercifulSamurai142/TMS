package bean;

public class PasswordGenerator {
	private String pass="";

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}
	void generate() {
		int [] factor= {65,97};
		int i=10,rand1,rand2,index;
		while(i>=0) {
			rand1=(int)(Math.random()*2);
			rand2=(int)(Math.random()*10);
			index=(int)(Math.random()*2);
			if(rand1 %2 == 0) {
				rand2=48+rand2;
				pass=pass+Character.toString((char)rand2);
			}
			else {
				try {
					rand2=factor[index]+(int)(rand2*2.6);
				} catch (Exception e) {
					rand2=factor[1]+(int)(rand2*2.6);
					e.printStackTrace();
				}
				pass=pass+Character.toString((char)rand2);
			}
			i--;
		}
	}
	public static void main(String[] args) {
		PasswordGenerator ob=new PasswordGenerator();
		ob.generate();
		System.out.println(ob.getPass());
	}
}
