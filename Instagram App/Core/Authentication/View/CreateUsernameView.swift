//
//  CreateUsernameView.swift
//  Instagram App
//
//  Created by Jai  on 11/08/23.
//

import SwiftUI

struct CreateUsernameView: View {
    
    @EnvironmentObject var viewModel : RegistrationViewModel
    var body: some View {
        VStack(spacing: 12){
            Text(" Create Username")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Pick A username For Your Account You can Change It Later ")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal , 24)
            
            TextField("Username", text: $viewModel.username)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
            
            NavigationLink {
                CreatePasswordView()
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
    }
}

struct CreateUsernameView_Previews: PreviewProvider {
    static var previews: some View {
        CreateUsernameView()
    }
}
