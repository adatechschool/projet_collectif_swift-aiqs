//
//  SignInViewModel.swift
//  Wave
//
//  Created by Quentin LEE on 10/05/2022.
//

import Combine
import Foundation

final class SignInViewModel: ObservableObject {

    // MARK: - Properties

    @Published var email = ""
    @Published var password = ""

    // MARK: -

    @Published var hasError = false

    @Published var isSigningIn = false

    // MARK: -

    var canSignIn: Bool {
        !email.isEmpty && !password.isEmpty
    }

    // MARK: - Public API

    func signIn() {
        guard !email.isEmpty && !password.isEmpty else {
            return
        }
      // TODO: To implement when creating an API : https://cocoacasts.com/networking-essentials-how-to-implement-basic-authentication-in-swift
     /*   var request = URLRequest(url: URL(string: "http://localhost:8080/api/v1/signin"))
        request.httpMethod = "POST"
        let authData = (email + ":" + password).data(using: .utf8)!.base64EncodedString()
        request.addValue("Basic \(authData)", for HTTPHeaderField: "Authorization)
        isSigningIn = true
        URLSession.shared.dataTask(with: request){[weak self] data, response, error in DispatchQueue.main.async{ if error != nil || (response as! HTTPURLResponse).statusCode != 200 {
        self?.hasError = true
    } else if let data = data {
        do {
            let signInResponse = try JSONDecoder().decode(SignInResponse.self, from: data)

            print(signInResponse)

            // TODO: Cache Access Token in Keychain
        } catch {
            print("Unable to Decode Response \(error)")
        }
    }

    self?.isSigningIn = false
}
        }.resume()*/
    }

}

fileprivate struct SignInResponse: Decodable {

    // MARK: - Properties

    let accessToken: String

}
