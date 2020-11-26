//
//  FUser.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/6/20.
//

import Foundation
import FirebaseAuth

class FUser {
    let id: String
    var email: String
    var firstName: String
    var lastName: String
    var fullName: String
    var phoneNumber: String
    
    var fullAddress: String?
    var onBoarding: Bool
    
    
    init (_id: String, _email: String, _firstName: String, _lastName:String, _phoneNumber: String) {
    
    id = _id
    email = _email
    firstName = _firstName
    lastName = _lastName
    fullName = firstName + " " + lastName
    phoneNumber = _phoneNumber
    onBoarding = false
}
    
    
    class func currentId() -> String {
        
        return Auth.auth().currentUser!.uid
    }
    
    class func currentUser() -> FUser? {
        if Auth.auth().currentUser != nil {
            if userDefaults.object(forKey: kCURRENTUSER) != nil {
                return nil //TODO: add initalizer
            }
            
        }
        
        return nil
    }
    
    class func loginUserWith(email: String, password: String, completion: @escaping (_ error: Error?, _ isEmailVerified: Bool) -> Void) {
        
        Auth.auth().signIn(withEmail: email, password: password) { (authDataResult, error) in
            
            
            if error == nil {
                if authDataResult!.user.isEmailVerified {
                    
                    //Download FUser object and save locally
                    
                } else {
                    completion(error, false)
                }
                
            } else {
                
                completion(error, false)
            }
        }
    }
    
    class func registerUserWith(email: String, password: String, completion: @escaping (_ error: Error?) -> Void) {
        
        Auth.auth().createUser(withEmail: email, password: password) { (authDataResult, error) in
            
            completion(error)
            
            
            if error == nil {
                authDataResult!.user.sendEmailVerification { (error) in
                    print("Verification Email Sent error is :", error?.localizedDescription)
                }
            }
        }
        
    }
}



