import java.util.Scanner;

public aspect login{
	
	private static Scanner input = new Scanner(System.in);
	pointcut valida(): execution(* make*(..));
		before(): valida(){
			System.out.println("Ingrese usuario:");
			String inputText = input.nextLine(); 
	        System.out.println("Ingrese contraseña:");
	        inputText = input.nextLine();			
		}
	
	pointcut valida2(): execution(* my*(..));    
		before(): valida2(){
			System.out.println("Ingrese usuario:");
			String inputText = input.nextLine(); 
	        System.out.println("Ingrese contraseña:");
	        inputText = input.nextLine(); 			
		}
}