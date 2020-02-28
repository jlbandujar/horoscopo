/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.ArrayList;

/**
 *
 * @author Jose
 */
public class Utilidades {
    public static ArrayList<String> getMeses(){
        ArrayList<String> meses = new ArrayList<String>();
        for(int i=1;i<=12;i++){
            meses.add(String.valueOf(i));
        }
        return meses;
    }
    
    public static ArrayList<String> getDias(){
        ArrayList<String> dias = new ArrayList<String>();
        for(int i=1;i<=31;i++){
            dias.add(String.valueOf(i));
        }
        return dias;
    }
    
    public static String getHoroscopo( int dia, int mes ){
        String signo="";
        switch ( mes ){
            case 1: 
                if ( dia>20 ) {
                    signo="Acuario";
                } else {
                    signo="Capricornio";
                }
                break;
            case 2: 
                if ( dia>20 ) {
                    if ( dia<=29 ) {
                        signo="Piscis";
                    }
                    else {
                        signo = "Error de fecha";
                    }
                } else {
                    signo="Acuario";
                }
                break;
            case 3: 
                if ( dia>20 ) {
                    signo="Aries";
                } else {
                    signo="Piscis";
                }
                break;
        }
        return signo;
    }
}
            
  