//
//  View+Ext.swift
//  Check-in
//
//  Created by Nawaf Alotaibi on 10/09/2022.
//

import SwiftUI

extension View{
    func ProfileNameStyle() -> some View {
        self.modifier(ProfileNameText())
    }
}
