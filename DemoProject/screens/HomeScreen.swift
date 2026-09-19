//
//  RegisterScreenView.swift
//  DemoProject
//
//  Created by MUHAMMAD ZOHAIB on 7/6/26.
//

import SwiftUI

struct HomeScreen:View {
    
    var body: some View{
        
        NavigationStack {
            VStack {
                       
            }
            .toolbarRole(.browser) // add this!
            .toolbar {
                Image("loading")
                .resizable()
                .scaledToFit()
                .frame(maxWidth:30, maxHeight: 30)
                           
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Home")
            .toolbarRole(.browser)
            .padding()
            
            
            TabView{
                
                Tab("Home", systemImage: "user"){
                    Home()
                }
                Tab("Explore", systemImage: "user"){
                    Explore()
                }
                Tab("Facts", systemImage: "user"){
                    Facts()
                }
                Tab("Saved", systemImage: "user"){
                   Saved()
                }
                Tab("Profile", systemImage: "user"){
                   Profile()
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight:.infinity)
            .background(Color.off_white)
            
        }
        .frame(maxWidth: .infinity, maxHeight:.infinity)
        .background(Color.off_white)
        
        
    }
    
            
}



#Preview{
    HomeScreen()
}
