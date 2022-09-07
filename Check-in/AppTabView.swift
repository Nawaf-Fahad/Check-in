//
//  AppTabView.swift
//  Check-in
//
//  Created by Nawaf Alotaibi on 07/09/2022.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView{
            LocationMapView()
                .tabItem{
                    Label("Map", systemImage: "map")
                }
            LocationListView()
                .tabItem{
                    Label("List", systemImage: "list.dash")
                }
            ProfileView()
                .tabItem{
                    Label("Profile", systemImage: "person")
                }
        }
        .accentColor(.brandPrimary)
    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
