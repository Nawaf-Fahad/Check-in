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
                    HStack{
                        Image("default-square-asset")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                            .padding(.vertical,6)
                            
                        
                        VStack(alignment:.leading){
                            Text("Test Resturant is here")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .lineLimit(1)
                                .minimumScaleFactor(0.75)
                            
                            HStack{
                                ImageView()
                                ImageView()
                                ImageView()
                                ImageView()
                                
                                
                            }
                        }
                        .padding(.leading)
                        
                        
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

struct ImageView: View {
    var body: some View {
        Image("default-avatar")
            .resizable()
            .scaledToFit()
            .frame(width: 35, height: 35)
            .clipShape(Circle())
    }
}
