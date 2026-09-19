//
//  SignupViewController.swift
//  DemoProject
//
//  Created by MUHAMMAD ZOHAIB on 8/22/26.
//

import SwiftUI

struct SignupViewController:View{
    
    @State private var fullname:String = ""
    @State private var institutionalName:String = ""
    @State private var password:String = ""
    @State private var confirmPwd:String = ""
    @State private var selected = 1
    @State private var isAccountCreated = false
    
    var body: some View{
        
        NavigationStack{
            
            ScrollView{
                
                VStack{
                    
                   Text("NEXUS")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                    
                    Text("Join the global research network")
                         .font(.system(size: 20))
                         .foregroundStyle(Color.gray)
                         .padding(.top, 5)
                    
                    VStack{
                        
                        Text("Username")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                        
                        
                        TextField("Hello word", text:$fullname)
                            .padding(.top,10)
                            .padding(.bottom,10)
                            .padding(.leading,5)
                            .padding(.trailing,5)
                            .border(Color.gray)
                            .cornerRadius(5)
                        
                        Text("Institutional Name")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                            .padding(.top,5)
                            .padding(.top,5)
                        
                        
                        TextField("Hello word", text:$institutionalName)
                            .padding(.top,10)
                            .padding(.bottom,10)
                            .padding(.leading,5)
                            .padding(.trailing,5)
                            .border(Color.gray)
                            .cornerRadius(5)
                        
                        Text("Password")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                            .padding(.top,5)
                        
                        
                        TextField("Hello word", text:$password)
                            .padding(.top,10)
                            .padding(.bottom,10)
                            .padding(.leading,5)
                            .padding(.trailing,5)
                            .border(Color.gray)
                            .cornerRadius(5)
                        
                        Text("Confirm password")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                            .padding(.top,5)
                        
                        
                        TextField("Confirm password", text:$confirmPwd)
                            .padding(.top,10)
                            .padding(.bottom,10)
                            .padding(.leading,5)
                            .padding(.trailing,5)
                            .border(Color.gray)
                            .cornerRadius(5)
                        
                        Text("Primary area of interest")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                            .padding(.top,5)
                        
                        
                        Menu("Select Option") {
                            Button("Health") {
                                print("A selected")
                            }
                            Button("Medicine") {
                                print("B selected")
                            }
                            Button("Blogs") {
                                print("C selected")
                            }
                        }
                        .padding(10)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundStyle(Color.gray)
                        .border(Color.gray)
                        
                        
                        Button(action:{
                        
                            if fullname.isEmpty && password.isEmpty && institutionalName.isEmpty
                                && confirmPwd.isEmpty
                            {
                                print("field are empty")
                                isAccountCreated = false
                            }
                            else{
                                isAccountCreated = true
                            }
                        
                        }){
                            Text("Create Account")
                                .frame(maxWidth: .infinity)
                                .padding(15)
                                .background(Color.black)
                                .foregroundStyle(Color.white)
                                .cornerRadius(10)
                                .padding(.top,10)
                        }.navigationDestination(isPresented: $isAccountCreated){
                            
                            if isAccountCreated == true {
                                LoginViewController()
                            }else{
                                
                            }
                            
                        }
                        
                        Text("By creating an account, you agree to our Terms of Service.")
                            .font(.system(size: 12))
                            .padding(.top,10)
                            .padding(.bottom,20)
                        
                    }
                    .padding(.all,15)
                    .frame(maxWidth: .infinity,maxHeight: .infinity)
                    .background(Color.white)
                    .shadow(radius: 5)
                    .cornerRadius(10)
                    
                    Text("Already have an account? Sign in")
                         .font(.system(size: 20))
                         .foregroundStyle(Color.black)
                         .padding(.top, 5)
                    
                    
                }
                
                .padding(.all, 20)
                
            }.background(Color(red: 0.95, green: 0.94, blue: 0.93))
            
        }
    }
    
    
}

#Preview{
    SignupViewController()
}
