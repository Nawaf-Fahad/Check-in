//
//  Check_inApp.swift
//  Check-in
//
//  Created by Nawaf Alotaibi on 07/09/2022.
//

import SwiftUI

@main
struct Check_inApp: App {
    let locationsManager = LocationManager()
    var body: some Scene {
        WindowGroup {
            AppTabView().environmentObject(locationsManager)
        }
    }
}
