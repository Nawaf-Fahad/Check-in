//
//  LocationListView.swift
//  Check-in
//
//  Created by Nawaf Alotaibi on 07/09/2022.
//

import SwiftUI

struct LocationListView: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(0..<10 ,id:\.self){item in
                    NavigationLink(destination: LocationDetailView()){
                        LocationCell()
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
