//
//  LocationListView.swift
//  Check-in
//
//  Created by Nawaf Alotaibi on 07/09/2022.
//

import SwiftUI

struct LocationListView: View {
    @State private var locations: [DDGLocation] = [DDGLocation(record: MockData.location)]
    var body: some View {
        NavigationView{
            List{
                ForEach(locations,id: \.ckRecordID){location in
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
