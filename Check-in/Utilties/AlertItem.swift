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
}
