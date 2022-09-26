//
//  LocationListView.swift
//  Check-in
//
//  Created by Nawaf Alotaibi on 07/09/2022.
//

import SwiftUI

struct LocationListView: View {
    @EnvironmentObject private var locationManager: LocationManager
    var body: some View {
        NavigationView{
            List{
                ForEach(locationManager.locations){location in
                    NavigationLink(destination: LocationDetailView(location: location)){
                        LocationCell(location: location)
                    }
                    
                 
                    
                }
            }
            .navigationTitle("List of Spots")
            .listStyle(.plain)
//            .frame(maxWidth:.infinity)
            
        }
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}
