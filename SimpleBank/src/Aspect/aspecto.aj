package Aspect;
import java.io.*;
import java.util.Calendar;
import java.util.Scanner;

public aspect aspecto{
	
	//pointcut valida(): call(void com.bank.Bank.menu(*));
	/*pointcut log(): call(void com.bank.Bank.my*(*));
	
	after(): log(){
		File file = new File("log.txt");
		
		try{
			
			FileWriter w = new FileWriter(file);
			
			BufferedWriter bw = new BufferedWriter(w);
			
			PrintWriter wr = new PrintWriter(bw);  
			
			wr.write("Esta es una linea de codigo");//escribimos en el archivo
			
			wr.append(" - y aqui continua"); //concatenamos en el archivo sin borrar lo existente

			wr.close();
			
			bw.close();
			
			}catch(IOException e){};
		
			 }

		*/
	
	File file = new File("log.txt");
    Calendar cal = Calendar.getInstance();
    //Aspecto1: Deben hacer los puntos de cortes (pointcut) para crear un log con los tipos de transacciones realizadas.
    pointcut success() : call(* create*(..) );
    after() : success() {
    	System.out.println("**** User created ****");
    }
	
    
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

