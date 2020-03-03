import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Arrays;

public class Java_SQl {
	public static void main(String[] args) throws IOException {

        String[] command = {"sqlplus", "rxk2622/Rits55002307@acaddbprod-1.uta.edu:1523/pcse1p.data.uta.edu", "@Insert_Tables.sql"};
         ProcessBuilder probuilder = new ProcessBuilder( command );           

         Process process = probuilder.start();

         //Read out dir output
         InputStream is = process.getInputStream();
         InputStreamReader isr = new InputStreamReader(is);
         BufferedReader br = new BufferedReader(isr);
         String line;
         System.out.printf("Output of running %s is:\n",
                 Arrays.toString(command));
         while ((line = br.readLine()) != null) {
             System.out.println(line);
         }

         //Wait to get exit value
         try {
             int exitValue = process.waitFor();
             System.out.println("\n\nExit Value is " + exitValue);
         } catch (InterruptedException e) {
             // TODO Auto-generated catch block
             e.printStackTrace();
         }



}
}
