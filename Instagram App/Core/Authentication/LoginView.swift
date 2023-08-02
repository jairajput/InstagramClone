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
               Image("Instagram")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 100)
                
                VStack{
                    TextField( "Enter Your Email" , text: $email)
                        .autocapitalization(.none)
                        .padding(12)
                        .font(.subheadline)
                        .background(Color(.systemGray6)).cornerRadius(10)
                        .padding(.horizontal , 24)
                    SecureField( "Password" , text: $password)
                        .autocapitalization(.none)
                        .padding(12)
                        .font(.subheadline)
                        .background(Color(.systemGray6)).cornerRadius(10)
                        .padding(.horizontal , 24)
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
                    print("show forgot password")
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
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}