//
//  LocationManager.swift
//  Check-in
//
//  Created by Nawaf Alotaibi on 20/09/2022.
//

import Foundation

final class LocationManager: ObservableObject{
    @Published var locations : [DDGLocation] = []
}
