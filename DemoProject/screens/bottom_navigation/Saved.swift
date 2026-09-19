//
//  Saved.swift
//  DemoProject
//
//  Created by MUHAMMAD ZOHAIB on 8/24/26.
//

import SwiftUI

struct Saved : View{
    
    @State private var isTapped:Bool = false
    
    let savedList = [
        SavedBlogModel(title:"Blogs for Immune", data:"blogs for immune"),
        SavedBlogModel(title:"Blogs for Diets", data:"blogs for diets"),
        SavedBlogModel(title:"Blogs for Health", data:"blogs for health")
    ]
    
    var body: some View{
        
        VStack{
            
            Text("Saved")
                .frame(maxWidth:.infinity, alignment: .leading)
                .font(.system(size: 30))
                .fontWeight(.bold)
            
            Text("Your personal knowledge library. Organize and revisit the articles and facts that matter to you.")
                .frame(maxWidth:.infinity, alignment: .leading)
                .padding(.top, 10)
            
            HStack{
                
                Text("Saved Articles")
                    .padding(.all,10)
                    .background(isTapped ? Color.gray : Color.white)
                    .foregroundStyle(isTapped ? Color.white : Color.black)
                    .cornerRadius(5)
                    .onTapGesture {
                        withAnimation{
                            isTapped.toggle()
                        }
                    }
                
                Text("Saved Facts")
                    .padding(.all,10)
                    .background(!isTapped ? Color.gray : Color.white)
                    .foregroundStyle(!isTapped ? Color.white : Color.black)
                    .cornerRadius(5)
                    .onTapGesture {
                        withAnimation{
                            isTapped.toggle()
                        }
                    }
                
            }
            .frame(maxWidth:.infinity)
            .padding(.vertical, 15)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.top,20)
            .padding(.horizontal, 20)
            
            
            List{
                SavedViewItem()
                SavedViewItem()
            }
            .frame(maxWidth: .infinity)
            
        }
        .padding(.horizontal,10)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color.off_white)
        
    }
    
}

struct SavedViewItem:View{
    
    var body: some View{
        
        VStack{
            
            Image("facts_image")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: 100)
                .padding(.top,20)
                .clipped()
            
            VStack{
                
                VStack(alignment: .leading) {
                    Text("Neuroscience")
                        .padding(.all, 8)
                        .background(Color.green.tertiary)
                        .cornerRadius(5)
                        .padding(.top,20)
                        
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                
                Text("5 Amazing things your Immune System does")
                    .padding(.top,5)
                    .padding(.leading, 10)
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("6 mins read")
                    .padding(.top,1)
                    .padding(.leading, 10)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            .frame(maxWidth: .infinity)
            .background(Color.white)
            
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(12)
        .padding(.bottom, 1)
        .listRowSeparator(.hidden)
        .listRowBackground(Color.clear)
        
    }
    
}


#Preview {
    Saved()
}
