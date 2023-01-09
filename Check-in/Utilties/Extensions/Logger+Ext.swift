//
//  Logger+Ext.swift
//  Check-in
//
//  Created by Nawaf Alotaibi on 20/10/2022.
//

import OSLog

extension Logger {
    // note: the use of instance stored properties are not allowed in extensions
    // but static (global) stored properties are
    private static let subsystem = Bundle.main.bundleIdentifier!

    // Logs the LocationMapViewModel
    static let locationMapViewModel = Logger(subsystem: subsystem, category: "LocationMapViewModel")

    // Log the UIImage+Ext
    static let uiImageExt = Logger(subsystem: subsystem, category: "UIImage+Ext")

    // Log the ProfileView
    static let profileView = Logger(subsystem: subsystem, category: "ProfileView")

    // Log the ProfileViewModel
    static let profileViewModel = Logger(subsystem: subsystem, category: "ProfileViewModel")

    // Log the CloudKitManager
    static let cloudKitManager = Logger(subsystem: subsystem, category: "CloudKitManager")

    // Log the LocationDetailViewModel
    static let locationDetailViewModel = Logger(subsystem: subsystem, category: "LocationDetailViewModel")

    // Log the LocationListViewModel
    static let locationListViewModel = Logger(subsystem: subsystem, category: "LocationListViewModel")

    // Log the AppTabViewModel
    static let appTabViewModel = Logger(subsystem: subsystem, category: "AppTabViewModel")
}

