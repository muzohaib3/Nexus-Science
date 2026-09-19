//
//  LoginViewController.swift
//  DemoProject
//
//  Created by MUHAMMAD ZOHAIB on 7/21/26.
//

import SwiftUI

struct LoginViewController: View{
    
    @State private var isActive = false
    @State private var emailUserName:String = ""
    @State private var password:String = ""
    @State private var isLoginClicked = false
    @State private var isSignUpClicked = false
    
    var body: some View {
  
        NavigationStack{
            
            ScrollView{
                
                VStack{
                    
                    Image("filter")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 100, maxHeight: 100)
                    
                    Text("NEXUS")
                        .foregroundStyle(Color.black)
                        .font(.system(size: 30, weight: .bold))
                    
                    Text("Welcome back, Scientist.")
                        .foregroundStyle(Color.black)
                        .padding(.top, 1)
                        .font(.system(size: 20))
                    
                    
                    Text("Email or username")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .multilineTextAlignment(.leading)
                        .fontWeight(.bold)
                        .padding(.top,10)
                            
                    
                    TextField("abc@gmail.com",text:$emailUserName)
                        .padding(.all, 20)
                        .border(Color.gray)
                        .cornerRadius(5)
                    
                    HStack{
                        
                        Text("Password")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .multilineTextAlignment(.leading)
                            .fontWeight(.bold)
                            .padding(.top,5)
                        
                        Text("Forgot password?")
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .multilineTextAlignment(.trailing)
                            .padding(.top,5)
                    }
                    
                    
                    TextField("*******",text:$password)
                        .padding(.all, 20)
                        .border(Color.gray)
                        .cornerRadius(5)
                    
                    Button(action: { isLoginClicked = true }){
                        Text("Login")
                            .foregroundStyle(Color.white)
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity)
                            .padding(.all, 18)
                            .background(Color.black.gradient)
                            .padding(.top, 20)
                    }.navigationDestination(
                        isPresented: $isLoginClicked
                    ){
                        HomeScreen()
                    }
                        
                        Button(action: {isSignUpClicked = true})
                        {
                            Text("Create account")
                                .padding(18)
                                .frame(maxWidth: .infinity)
                                .border(Color.gray)
                                .foregroundStyle(Color.black)
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                        }
                        .navigationDestination(
                            isPresented: $isSignUpClicked
                        ){
                            SignupViewController()
                        }
                    
                    
                    Text("OR")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(.top,10)
                    
                    Button("Sign in with Google"){}
                        .padding(18)
                        .frame(maxWidth: .infinity)
                        .border(Color.gray)
                        .background(Color.blue.gradient)
                        .foregroundStyle(Color.white)
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                    
                    Button("Sign in with Apple"){}
                        .padding(18)
                        .frame(maxWidth: .infinity)
                        .border(Color.gray)
                        .background(Color.blue.gradient)
                        .foregroundStyle(Color.white)
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        
                    
                }
                .frame(maxWidth: .infinity, maxHeight:.infinity)
                .background(Color.white)
                .padding(.horizontal, 20)
                .padding(.vertical, 20)
                
            }
            
        }
     
    }
  
}

#Preview {
    LoginViewController()
}

