//
//  AvatarView.swift
//  Check-in
//
//  Created by Nawaf Alotaibi on 10/09/2022.
//

import SwiftUI

struct AvatarView: View {
    var size: CGFloat
    var body: some View {
        Image("default-avatar")
            .resizable()
            .scaledToFit()
            .frame(width: size, height: size)
            .clipShape(Circle())
    }
}


struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarView(size: 25)
    }
}
