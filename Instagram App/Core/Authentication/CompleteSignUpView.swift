//
//  CompleteSignUpView.swift
//  Instagram App
//
//  Created by Jai  on 11/08/23.
//

import SwiftUI

struct CompleteSignUpView: View {
    @Environment (\.dismiss) var dismiss
    var body: some View {
        
            VStack(spacing: 12){
                Spacer()
                Text("Welcom To Instagram, jairajput")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.top)
                    .multilineTextAlignment(.center)
                
                Text("Click Below To Complete RegistrationAnd Start Using Instagram ")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal , 24)
                
              
                Button{
//                    CreateUsernameView()
                    print("Complete SignUp")
                    
                } label: {
                    Text("Complete Sign Up")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360 , height:44)
                        .background(Color(.systemBlue))
                        .cornerRadius(10)
                }

                .padding(.vertical)
                
                Spacer()
                
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName:"cheveron.left")
                        .imageScale(.large)
                        .onTapGesture {
                            dismiss()
                        }
                }
            }
    }
}

struct CompleteSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteSignUpView()
    }
}
