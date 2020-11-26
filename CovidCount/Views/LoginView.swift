//
//  LoginView.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/5/20.
//

import SwiftUI
import FirebaseAuth
import Firebase

struct LoginView: View {
    
    @State var showingSignUp = false
    
    @State var email = ""
    @State var password = ""
    @State var repeatPassword = ""
    
    
    var body: some View {
        VStack{
            Text("Sign In")
                .fontWeight(.heavy)
                .font(.largeTitle)
                .padding([.bottom, .top], 20)
            
            VStack(alignment :.leading) {
                
                VStack(alignment: .leading) {
            
            Text("Email")
                .font(.headline)
                .fontWeight(.light)
            foregroundColor(Color.init(.label))
                .opacity(0.75)
            
            TextField("Enter your email", text: $email)
            Divider()
           
            Text("Password")
                .font(.headline)
                .fontWeight(.light)
            foregroundColor(Color.init(.label))
                .opacity(0.75)
            
            TextField("Enter your password", text: $password)
            Divider()
            
            if showingSignUp {
                Text("Repeat Password")
                    .font(.headline)
                    .fontWeight(.light)
                foregroundColor(Color.init(.label))
                    .opacity(0.75)
                
                TextField("Enter your password again", text: $repeatPassword)
                Divider()
            }
                } .padding(.bottom, 15)
                .animation(.easeOut(duration: 0.1))
                
                
                HStack{
                    
                    Spacer()
                    
                    Button(action: {
                        
                        self.resetPassword()
                    }, label: {
                        Text("Forgot Password")
                            .foregroundColor(Color.gray.opacity(0.5))
                    })
                }// End of Hstack
                
                
                
                
            }// End of first VStack
            .padding(.horizontal, 6)
            
            
            Button(action: {
                
                self.showingSignUp ? self.signUpUser() : self.login()
                
            }, label: {
                Text(showingSignUp ? "Sign Up": "Sign In" )
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 120)
                    .padding()
            })// End of Button
            .background(Color.blue)
            .clipShape(Capsule())
            .padding(.top, 45)
            
            SignUpView(showingSignUp: $showingSignUp)
            
        }// End of Second VStack
        .background(Color("cardBackgroundGray"))
    }
    
    private func login() {
        
        
    }
    
    private func signUpUser() {
        
        if email != "" && password != "" && repeatPassword != "" {
            if password == repeatPassword {
                
                
           
        FUser.registerUserWith(email: email, password: password) {
            (error) in
            
            if error != nil {
                print("Error registering user: ", error!.localizedDescription)
                return
            }
            print("User has been created")
            
        }
            } else {
                print("Passwords don't match")
            }
        } else {
            print("Email and Password must be set")
        }
    }
    
    private func resetPassword() {
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct SignUpView: View {
    @Binding var showingSignUp: Bool
    
    var body: some View {
        
        VStack {
            Spacer()
            
            HStack(spacing: 8) {
                
                Text("Don't Have an Account?")
                    .foregroundColor(Color.gray.opacity(0.5))
                
                Button(action: {
                    self.showingSignUp.toggle()
                    
                }
                       
                       , label: {
                    Text("Sign Up")

                       }) .foregroundColor(.blue)
               
            }
            .padding(.top, 25)
            
        }// End of VStack
    }
        
        }
