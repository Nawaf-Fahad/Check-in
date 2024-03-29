//
//  OnboardView.swift
//  Check-in
//
//  Created by Nawaf Alotaibi on 27/09/2022.
//

import SwiftUI

struct OnboardView: View {
    @Binding var isShowingOnboardView:Bool
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    isShowingOnboardView = false
                } label: {
                   XDismissButton()
                }
                .padding()
            }
            
            Spacer()
            
            LogoView(frameWidth: 250)
                .padding(.bottom)
            
            VStack(alignment: .leading, spacing: 32) {
                OnboardInfoView(imageName: "building.2.crop.circle",
                                title: "Restaurant Locations",
                                description: "Find places to dine around you")
                
                OnboardInfoView(imageName: "checkmark.circle",
                                title: "Check In",
                                description: "Let your friends know about your location")
                
                OnboardInfoView(imageName: "person.2.circle",
                                title: "Find Friends",
                                description: "See where your friends are and join the party")
            }
            .padding(.horizontal, 40)
            
            Spacer()
        }
    }
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView(isShowingOnboardView: .constant(true))
    }
}

struct OnboardInfoView: View {
    
    var imageName: String
    var title: String
    var description: String
    
    var body: some View {
        HStack(spacing: 26) {
            Image(systemName: imageName )
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.brandPrimary)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title).bold()
                Text(description)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
                    .minimumScaleFactor(0.75)
            }
        }
    }
}
