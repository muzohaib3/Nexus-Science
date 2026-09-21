//
//  Home.swift
//  DemoProject
//
//  Created by MUHAMMAD ZOHAIB on 8/24/26.
//

import SwiftUI

struct Home:View{
    
    @State var email = ""
    var contentList = ["Why does your heart beat faster when you're nervous?", "Your body contains trillions of microorganisms.", "Why do we dream?"]
    
    var body: some View{
        
        ScrollView
        {
            VStack
            {
                
                Text("Discover something new today.")
                    .frame(maxWidth:.infinity, alignment: .leading)
                    .font(.system(size: 30))
                    .padding(.top, 20)
                    .fontWeight(.bold)
                
                Text("Medical, scientific and fascinating facts — explained simply.")
                    .frame(maxWidth:.infinity, alignment: .leading)
                    .padding(.top, 10)
                
                TextField("please enter your item", text: $email)
                    .frame(maxWidth: .infinity)
                    .padding(.all, 15)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 2.0)
                    .padding(.top, 20)
                
                Text("Popular Searches")
                    .frame(maxWidth:.infinity, alignment: .leading)
                    .font(.system(size:20))
                    .fontWeight(.bold)
                    .padding(.top, 10)
                
                ScrollView(.horizontal, showsIndicators: false){
                    LazyHStack{
                        
                        let list = ["Human brain","Heart","Sleep","Immune system"]
                        ForEach(list, id: \.self){ index in
                            PopularSearchItem(textTitle: index)
                        }
                        
                    }
                }
                
                HStack{
                    
                    Text("Trending Today")
                        .frame(maxWidth:.infinity, alignment: .leading)
                        .font(.system(size:20))
                        .fontWeight(.bold)
                        .padding(.top, 10)
                    
                    Text("View all")
                        .frame(maxWidth:.infinity, alignment: .trailing)
                        .font(.system(size:18))
                        .padding(.top, 10)
                        .foregroundStyle(Color.blue)
                }
                
                LazyVStack
                {
                    ForEach(contentList, id: \.self){ item in
                        TrendingTodayItem(itemDescr: item)
                    }
                }
                .padding(.top,20)
                
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .padding(.horizontal, 20)
            
        }.background(Color.off_white)
        
    
        
        
    }
}

struct PopularSearchItem: View {
    
    var textTitle: String
    
    var body: some View {
        Text(textTitle)
            .font(.system(size: 15, weight: .medium))
            .foregroundColor(.black)
            .padding(.vertical, 8)
            .padding(.horizontal, 14)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray.opacity(0.4), lineWidth: 1)
            )
    }
}

struct TrendingTodayItem:View{
    
    @State var itemDescr:String
    
    var body: some View{
        
        VStack
        {
            Text(itemDescr)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size: 20, weight: .bold))
            
            Text("3 min read")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size: 14))
                .padding(.top, 2)
                .foregroundStyle(Color.gray)
                
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 20)
        .padding(.horizontal, 10)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 3.0)
        
    }
    
}

#Preview {
    Home()
}
