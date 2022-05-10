//
//  LoginView.swift
//  Wave
//
//  Created by Quentin LEE on 03/05/2022.
//

import SwiftUI
/*
struct LoginView: View {
    @State var username: String=""
    @State var password: String=""
    @State private var isLoggedIn = false
    var body: some View {
        VStack{
        WelcomeText()
        UserImage()
        TextField("Username", text: $username)
            .padding()
            .cornerRadius(5.0)
            .padding(.bottom, 20)
        SecureField("Password", text: $password)
            .padding()
            .cornerRadius(5.0)
            .padding(.bottom, 20)
        
                Button(action: {print("Button tapped")}) {
                    Text("LOGIN")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 220, height: 60)
                        .background(Color.green)
                        .cornerRadius(15.0)
                        .padding()
                    }
    }
    }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct WelcomeText: View{
    var body: some View {
        return Text("Wave up!")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .padding(.bottom, 20)
    }
}

struct UserImage: View {
    var body: some View {
        Image("surfer-img")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 75)
    }
}
*/

struct SignInView: View {

    // MARK: - Properties

    @ObservedObject var viewModel: SignInViewModel

    // MARK: - View

    var body: some View {
        HStack {
            Spacer()

            VStack {
                VStack(alignment: .leading) {
                    Text("Email")
                    TextField("Email", text: $viewModel.email)
                        .autocapitalization(.none)
                        .keyboardType(.emailAddress)
                        .disableAutocorrection(true)
                    Text("Password")
                    SecureField("Password", text: $viewModel.password)
                }
                .textFieldStyle(.roundedBorder)
                .disabled(viewModel.isSigningIn)

                if viewModel.isSigningIn {
                    ProgressView()
                        .progressViewStyle(.circular)
                } else {
                    Button("Sign In") {
                        viewModel.signIn()
                    }
                }

                Spacer()
            }
            .padding()
            .frame(maxWidth: 400.0)

            Spacer()
        }
        .alert(isPresented: $viewModel.hasError) {
            Alert(
                title: Text("Sign In Failed"),
                message: Text("The email/password combination is invalid.")
            )
        }
    }

}
