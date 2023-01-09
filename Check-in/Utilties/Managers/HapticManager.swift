//
//  HapticManager.swift
//  Check-in
//
//  Created by Nawaf Alotaibi on 20/10/2022.
//

import UIKit

struct HapticManager {

    static func playSuccess() {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
    }
}
