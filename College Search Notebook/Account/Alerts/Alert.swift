//
//  Alert.swift
//  College Search Notebook
//
//  Created by Anthony Tast on 10/23/22.
//

//from appetizers app

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}


struct AlertContext {
    
    //  Account Alerts
    static let  invalidForm = AlertItem(title: Text("Invalid Form"),
                                                message: Text("Please ensure that all fields in the form have been filled out."),
                                                dismissButton: .default(Text("OK")))
    
    static let  invalidEmail = AlertItem(title: Text("Invalid Email"),
                                                message: Text("Please ensure your email is correct"),
                                                dismissButton: .default(Text("OK")))
    
    static let  userSaveSuccess = AlertItem(title: Text("Profile Save"),
                                                message: Text("Your profile information has been successfully saved"),
                                                dismissButton: .default(Text("OK")))
    
    static let  invalidUserData = AlertItem(title: Text("Profile Error"),
                                                message: Text("There was an error saving or retrieving your profile"),
                                                dismissButton: .default(Text("OK")))
}
