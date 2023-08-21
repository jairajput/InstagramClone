//
//  AddEmailView.swift
//  Instagram App
//
//  Created by Jai  on 06/08/23.
//

import SwiftUI

struct AddEmailView: View {
    
    @Environment (\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel
    var body: some View {
        VStack(spacing: 12){
            Text("Add Your Email")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("You Will Use This Email To Sign In Your Account")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal , 24)
            
            TextField("Email", text: $viewModel.email)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
            NavigationLink {
                CreateUsernameView()
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

struct AddEmailView_Previews: PreviewProvider {
    static var previews: some View {
        AddEmailView()
    }
}
