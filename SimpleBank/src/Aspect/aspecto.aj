package Aspect;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public aspect aspecto{
	//File file = new File("log.txt");
    Calendar cal = Calendar.getInstance();
    pointcut logMy(): execution(* my*(..));
    after() : logMy(){
    	try{
			FileWriter w = new FileWriter("log.txt",true);
			BufferedWriter bw = new BufferedWriter(w);
			PrintWriter wr = new PrintWriter(bw); 
			cal.add(Calendar.DATE, 1);
			SimpleDateFormat format1 = new SimpleDateFormat("dd-MM-yyyy");
			String formatted = format1.format(cal.getTime());
			wr.append("Dinero retirado ");
			wr.append(formatted);
			wr.append("\n");
			wr.close();
			bw.close();
			}catch(IOException e){};
    }
    
    pointcut logMake(): execution(* make*(..));
    after() : logMake(){
    	try{
			FileWriter w = new FileWriter("log.txt",true);
			BufferedWriter bw = new BufferedWriter(w);
			PrintWriter wr = new PrintWriter(bw); 
			cal.add(Calendar.DATE, 1);
			SimpleDateFormat format1 = new SimpleDateFormat("dd-MM-yyyy");
			String formatted = format1.format(cal.getTime());
			wr.append("Transacción realizada "); //concatenamos en el archivo sin borrar lo existente
			wr.append(formatted);
			wr.append("\n");
			wr.close();
			bw.close();
			}catch(IOException e){};
    }
    
    
    
    pointcut success() : call(* create*(..) );
    after() : success() {
    	System.out.println("**** User created ****");
    }
	
    
    /*pointcut valida(): call(* make*(..));
	before(): valida(){
		System.out.println("Ingrese usuario:");
		Scanner sc = new Scanner(System.in);
		
	}
    pointcut valida2():call(* my*(..));    
	before(): valida2(){
		System.out.println("Ingrese usuario:");
		Scanner sc = new Scanner(System.in);
		
	}*/
	
	
}

