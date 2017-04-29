/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.paperless.paperlesstestingsystem;

import java.util.ArrayList;

/**
 *
 * @author georgy
 */
public class Test {
   
    private static ArrayList<Questions> questions= new ArrayList<Questions>();
    
    public static ArrayList<Questions> getQty() {
        return questions;
    }
    public static void addQuestions(Questions q,int i){
        questions.add(i,q);
    }
    
   
    
    
}
