//
//  Explore.swift
//  DemoProject
//
//  Created by MUHAMMAD ZOHAIB on 8/24/26.
//
import SwiftUI

struct Explore: View {
    
    var body: some View{
        
        @State var itemTapped = false
        @Environment(\.dismiss) var dismiss
        
        ScrollView{
            
            VStack{
                
                HStack{
                    
                    Image("back")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth:20, maxHeight:30)
                        .onTapGesture {
                            dismiss()
                        }
                    
                    Text("Search Item")
                        .padding(.top, 5)
                        .padding(.bottom, 5)
                        .padding(.leading, 10)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 10)
                }
                .frame(maxWidth:.infinity, alignment: .leading)
                
                
                
                Text("Search Result")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .padding(.top, 10)
                
                Text("342 results for brain")
                    .padding(.top, 5)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 14))
                
                LazyHStack{
                    ForEach(0..<5){ index in
                        BlogCategoryItem(isTapped: itemTapped)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top,20)
                
                LazyVStack{
                    ForEach(0..<5){ index in
                        BlogItem()
                    }
                }
                .frame(maxWidth: .infinity)
                
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .top)
            .background(Color(red: 0.95, green: 0.94, blue: 0.93))
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 20)
        .background(Color.off_white)
     
        
    }

}

struct BlogCategoryItem: View{
    
    @State var isTapped:Bool
    
    var body: some View{
        
        Text("Medical")
            .padding(.all,5)
            .border(Color.black)
            .background(self.isTapped ? Color.black : Color.white)
            .foregroundStyle(self.isTapped ? Color.white : Color.black)
            .onTapGesture {
                withAnimation{
                    self.isTapped.toggle()
                }
            }
    }
}


struct BlogItem:View{
    
    var body:some View{
        
        VStack{
            
            Image("facts_image")
                .resizable()
                .scaledToFit()
                .frame(maxWidth:.infinity, maxHeight:100)
            
            VStack{
                Text("Neuroscience")
                    .padding(5)
                    .font(.system(size: 14))
                    .background(Color.green.tertiary)
                    .cornerRadius(5)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 10)
            
            Text("How your brain stores memeory")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 10)
                .font(.system(size: 20))
                .fontWeight(.bold)
            
            Text("Explore the complex neurochemical processes that allow the human mind to encode, store, and retrieve vast amounts of information across a lifetime.")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 2)
                .font(.system(size: 14))
            
            
        }
        .padding(.all,15)
        .background(Color.white)
        .cornerRadius(10)
        .padding(.top,10)
        
        
    }
}




#Preview {
    Explore()
}
