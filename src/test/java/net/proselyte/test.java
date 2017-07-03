package net.proselyte;

import java.text.ParseException;
import java.util.regex.Pattern;

/**
 * Created by User on 12.03.2017.
 */
public class test {
    public static void main(String[] args) throws ParseException {
        String s = "&#1082;&#1077;&#1082;";

        System.out.println(s = s.replaceAll("&#",""));
        System.out.println(s = s.replaceAll("[1000-9999];$"," "));
      //  System.out.println(s = s.replaceAll("&#",""));
       // System.out.println(s.replaceAll("&#+;","kek"));



    }

}
