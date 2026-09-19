//
//  Facts.swift
//  DemoProject
//
//  Created by MUHAMMAD ZOHAIB on 8/24/26.
//

import SwiftUI

struct Facts : View{
    
    var body: some View{
        
        ScrollView{
            
            VStack{
                
                Text("Quick Facts")
                    .frame(maxWidth: .infinity)
                    .padding(.top,20)
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .foregroundStyle(Color.white)
                
                Text("60 seconds of science")
                    .padding(.top,2)
                    .foregroundStyle(Color.yellow)
                
                HStack{
                    
                    Image("like")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 25, maxHeight: 25)
                        .foregroundStyle(Color.white)
                    
                    Text("Human Body")
                        .foregroundStyle(Color.white)
                        .fontWeight(.bold)
                    
                }
                .padding(.all,10)
                .background(Color.gray)
                .cornerRadius(10)
                .padding(.top, 80)
                
                Text("Fact # 024")
                    .foregroundStyle(Color.white)
                    .fontWeight(.bold)
                    .padding(20)
                    .textCase(.uppercase)
                
                Text("Your heart beats around 100,000 times every day.")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 40))
                    .foregroundStyle(Color.white)
                    .fontWeight(.bold)
                    .padding(40)
                
                Button(action: {
                    
                }){
                    Text("Tap to learn why")
                        .padding(.horizontal, 20)
                        .padding(.vertical,10)
                        .background(Color.white)
                        .cornerRadius(15)
                        
                }
                
                HStack{
                    
                    Image("like")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 25, maxHeight: 25)
                        .padding(8)
                        .foregroundStyle(Color.white)
                        .background(Color.opaque_white)
                        .cornerRadius(20)
                        
                    
                    Image("save")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 25, maxHeight: 25)
                        .padding(8)
                        .foregroundStyle(Color.white)
                        .background(Color.opaque_white)
                        .cornerRadius(20)
                    
                    Image("share")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 25, maxHeight: 25)
                        .padding(8)
                        .foregroundStyle(Color.white)
                        .background(Color.opaque_white)
                        .cornerRadius(20)
                    
                    Text("7 / 20")
                        .padding(.horizontal, 20)
                        .padding(.vertical,10)
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundStyle(Color.egg_yellow)
                        .background(Color.opaque_white)
                        .cornerRadius(15)
                    
                }
                .padding(.top,20)
                    
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(
            LinearGradient(
                colors: [.init(red: 0.05, green: 0.1, blue: 0.2), .init(red: 0.8, green:0.8, blue: 0.8)],startPoint: .top,endPoint: .bottom
            ))
    }
    
}

#Preview {
    Facts()
}
