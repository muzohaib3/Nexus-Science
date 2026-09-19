//
//  TextFieldUtils.swift
//  DemoProject
//
//  Created by MUHAMMAD ZOHAIB on 7/13/26.
//

import SwiftUI

struct TextFieldUtils : View{
    
    let title:String
    @Binding var textString:String
    
    var body:some View {
        
        TextField(title, text:$textString)
        .padding(.leading, 20)
        .padding(.trailing,20)
        .padding(.top, 20)
        .padding(.bottom, 20)
        .border(Color.gray)
        .cornerRadius(2)
        .padding(.top, 10)
        
        
        if(textString.isEmpty){
            
        }
        else{
            
        }
        
    }
    
}
