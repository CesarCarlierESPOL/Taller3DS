import java.util.Scanner;

public aspect login{
	 pointcut valida(): call(* make*(..));
		before(): valida(){
			System.out.println("Ingrese usuario:");
			Scanner sc = new Scanner(System.in);	
		}
	
	 pointcut valida2():call(* my*(..));    
		before(): valida2(){
			System.out.println("Ingrese usuario:");
			Scanner sc = new Scanner(System.in);
			
		}
}