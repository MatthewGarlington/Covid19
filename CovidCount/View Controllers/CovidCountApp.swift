//
//  CovidCountApp.swift
//  CovidCount
//
//  Created by Matthew Garlington on 7/5/20.
//
import SwiftUI
import UIKit
import FirebaseAuth
import Firebase


// no changes in your AppDelegate class
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        return true
    }
}

@main
struct Testing_SwiftUI2App: App {

    // inject into SwiftUI life-cycle via adaptor !!!
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
  
    var body: some Scene {
        WindowGroup {
            ContentView(totalData: testCovUSTotal)
        }
    }
}
