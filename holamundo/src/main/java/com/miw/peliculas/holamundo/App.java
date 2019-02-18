package com.miw.peliculas.holamundo;

import java.text.DecimalFormat;
import java.util.Random;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
        
        Random r = new Random();
        double randomValue = 5 + (15 - 5) * r.nextDouble();
        System.out.println(new DecimalFormat("#.##").format(randomValue));
    }
}
