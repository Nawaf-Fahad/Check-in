//
//  CustomModifiers.swift
//  Check-in
//
//  Created by Nawaf Alotaibi on 10/09/2022.
//

import SwiftUI

struct ProfileNameText:ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 32, weight: .bold))
            .lineLimit(1)
            .minimumScaleFactor(0.75)
        
    }
}
