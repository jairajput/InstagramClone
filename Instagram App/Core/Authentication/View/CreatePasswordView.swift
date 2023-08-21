//
//  CreatePasswordView.swift
//  Instagram App
//
//  Created by Jai  on 11/08/23.
//

import SwiftUI

struct CreatePasswordView: View {
    
    @Environment (\.dismiss) var dismiss
    @EnvironmentObject var viewModel : RegistrationViewModel
    var body: some View {
        VStack(spacing: 12){
            Text("Create Password")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Your Password Must Be at Least 6 Character in length ")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal , 24)
            
            SecureField("Password", text: $viewModel.password)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
            NavigationLink {
                CompleteSignUpView()
            } label: {
                Text("Next")
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

struct CreatePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePasswordView()
    }
}
