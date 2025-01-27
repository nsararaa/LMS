//
//  LoginView.swift
//  LMS
//
//  Created by Sara Noor on 07/06/2024.
//

import SwiftUI


//func sendUsernameToCPP(_username: UnsafePointer<CChar>!)

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    let username : String
    
    var body: some View{
        NavigationStack {
            
            VStack {
                Spacer()
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding()
                
                VStack{
                    TextField("Enter your email", text:$email)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                    SecureField("Enter your password", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                    
                    NavigationLink {
                        Text("Forgot Password")
                    }label: {
                        Text("Forgot Password")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .padding(.vertical)
                            .padding(.trailing, 28)
                            
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    
                   
                    Button{
                        email.withCString {cString in sendEmailToCPP(cString)}
                    } label: {
                        Text("Login")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 350, height: 40)
                            .background(.black)
                            .cornerRadius(8)
                        
                    }
                    
                  
                }
                Spacer()
                
            }
            
        }
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(username: "")
    }
}
