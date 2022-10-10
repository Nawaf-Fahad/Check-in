//
//  AlertItem.swift
//  Check-in
//
//  Created by Nawaf Alotaibi on 20/09/2022.
//

import SwiftUI


struct AlertItem:Identifiable{
    let id = UUID()
    let title: Text
    let message:Text
    let dismissButton: Alert.Button
}

struct AlertContext{
    // MARK - MapView Errors
    
    static let unableToGetLocations = AlertItem(title: Text("Location error"),
                                                message: Text("Unable to retrive locations at this moment.\nPlease try again"),
                                                dismissButton: .default(Text("Ok")))
    
    static let locationRestricted = AlertItem(title: Text("Location Restricted"),
                                                message: Text("Your location is Restricted"),
                                                dismissButton: .default(Text("Ok")))
    
    static let locationDenied = AlertItem(title: Text("Location Denied"),
                                                message: Text("Check- in app does not have a permission to acesss to your location\nGo Settings -> Check in -> Location"),
                                                dismissButton: .default(Text("Ok")))
    
    static let locationDisable = AlertItem(title: Text("Location Disable"),
                                                message: Text("Check- in app does not have a permission to acesss to your location\nGo Settings -> Privacy -> Location"),
                                                dismissButton: .default(Text("Ok")))
    
    
    // MARK - ProfileView errors
    
    static let invaildProfile = AlertItem(title: Text("Invalid Profile"),
                                                message: Text("Photo and all fileds are required , bio must be less than 100"),
                                                dismissButton: .default(Text("Ok")))
    
    static let noUserRecord         = AlertItem(title: Text("No User Record"),
                                                    message: Text("You must log into iCloud on your phone in order to utilize Dub Dub Grub's Profile. Please log in on your phone's settings screen."),
                                                    dismissButton: .default(Text("Ok")))
        
    static let createProfileSuccess = AlertItem(title: Text("Profile Created Successfully"),
                                                    message: Text("Your profile has successfully been created."),
                                                    dismissButton: .default(Text("Ok")))
        
    static let createProfileFailure = AlertItem(title: Text("Failed to Create Profile"),
                                                    message: Text("We were unable to create your profile at this time.\n Please try again later or contact customer support if this persists."),
                                                    dismissButton: .default(Text("Ok")))
        
    static let unableToGetProfile   = AlertItem(title: Text("Unable To Retrieve Profile"),
                                                    message: Text("We were unable to retrieve your profile at this time. Please check your internet connection and try again later or contact customer support if this persists."),
                                                    dismissButton: .default(Text("Ok")))
    
    static let updateProfileSuccess   = AlertItem(title: Text("Profile Update Success🫡"),
                                                    message: Text("Your Profile was updated"),
                                                    dismissButton: .default(Text("Ok")))
    static let updateProfileFailure   = AlertItem(title: Text("Profile Update Failed😢"),
                                                    message: Text("We are unable to upadte your profile , Sorry For that"),
                                                    dismissButton: .default(Text("Ok")))
    
    static let invaildPhoneNumber = AlertItem(title: Text("Invalid Phone number"),
                                                message: Text("Phone number not found"),
                                                dismissButton: .default(Text("Ok")))
    static let unableToGetCheckInStatus     = AlertItem(title: Text("Server Error"),
                                                        message: Text("Unable to retrieve checked in status of the current user.\nPlease try again."),
                                                        dismissButton: .default(Text("Ok")))
        
    static let unableToCheckInOrOut         = AlertItem(title: Text("Server Error"),
                                                        message: Text("We are unable to check in/out at this time.\nPlease try again."),
                                                        dismissButton: .default(Text("Ok")))
        
    static let unableToGetCheckedInProfiles = AlertItem(title: Text("Server Error"),
                                                        message: Text("We are unable to get users checked into this location at this time.\nPlease try again."),
                                                        dismissButton: .default(Text("Ok")))
}
