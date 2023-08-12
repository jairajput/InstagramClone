//
//  LoginView.swift
//  Instagram App
//
//  Created by Jai  on 02/08/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
               Image("Instagram")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 100)
                
                VStack{
                    TextField( "Enter Your Email" , text: $email)
                        .autocapitalization(.none)
                        .modifier(IGTextFieldModifier())
                    SecureField( "Password" , text: $password)
                        .autocapitalization(.none)
                        .modifier(IGTextFieldModifier())
                }
                Button {
                    print("show forgot password")
                } label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing ,28)
                    
                }
                .frame(maxWidth: .infinity , alignment: .trailing)

                Button {
                    print("Login")
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360 , height:44)
                        .background(Color(.systemBlue))
                        .cornerRadius(10)
                        
                }
                .padding(.vertical)
                
                HStack{
                    Rectangle().frame(width: (UIScreen.main.bounds.width/2) - 40, height:0.5)
                    Text("OR")
                    Rectangle().frame(width: (UIScreen.main.bounds.width/2) - 40, height:0.5)
                }
                .foregroundColor(.gray)
                HStack{
                    Image("Facebook")
                        .resizable()
                        .frame(width: 20 , height: 20)
                    Text("Continue With Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                }
                .padding(.top , 8)
                Spacer()
                
                Divider()
                
                NavigationLink{
                    AddEmailView()
                        
                   
                } label: {
                    HStack(spacing:3){
                        Text("Dont Have An Account?")
                         
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical , 16)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
