//
//  LocationDetailView.swift
//  Check-in
//
//  Created by Nawaf Alotaibi on 08/09/2022.
//

import SwiftUI

struct LocationDetailView: View {
    let coulmns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())]
    var body: some View {

            VStack(spacing: 16){
                Image("default-banner-asset")
                    .resizable()
                    .scaledToFill()
                    .frame(height:120)
                HStack{
                    Label("1111 main street", systemImage: "mappin.and.ellipse")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Spacer()
                }
                .padding(.horizontal)
                
                Text("This is a descrption for testing perpouse , This is a descrption for testing perpouse,This is a descrption for testing perpouse")
                    .lineLimit(3)
                    .minimumScaleFactor(0.75)
                    .padding(.horizontal)
                
         
                ZStack{
                    Capsule()
                        .frame(height:80)
                        .foregroundColor(Color(.secondarySystemBackground))
                    
                    HStack(spacing: 20){
                        Button{
                            
                        }label: {
                            LocationActionButton(color: .brandPrimary, imageName: "location.fill")
                        }
                        
                        Link(destination: URL(string:"https://www.apple.com")!, label: {
                        
                            LocationActionButton(color: .brandPrimary, imageName: "network")
                      
                        })
                        
                        
                        
                        Button{
                            
                        }label: {
                            LocationActionButton(color: .brandPrimary, imageName: "phone.fill")
                        }
                        
                        Button{
                            
                        }label: {
                            LocationActionButton(color: .brandPrimary, imageName: "person.fill.checkmark")
                        }
                        
                        
                        
                        
                    }
//                    .padding(.horizontal)
                    
                }
                .padding(.horizontal)
                Text("Who's Here?")
                    .bold()
                    .font(.title2)
                ScrollView{
                LazyVGrid(columns: coulmns , content: {
                    FirstNameAvatarView(name: "Nawaf")
                    FirstNameAvatarView(name: "Osamah")
                    FirstNameAvatarView(name: "Ahmad")
                    FirstNameAvatarView(name: "Nawaf")
                    
                    
                    
                })
                }
                
                
                Spacer()
            }
            
            .navigationTitle("Location Name")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LocationDetailView()
            
        }
    }
}

struct LocationActionButton: View {
    var color : Color
    var imageName:String
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(color)
                .frame(width:60,height: 60)
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundColor(.white)
                .frame(width: 24, height: 24)
        }
    }
}

struct FirstNameAvatarView:View{
    var name:String
    var body: some View{
        VStack{
            AvatarView(size: 64)
            
            Text(name)
                .bold()
                .lineLimit(1)
                .minimumScaleFactor(0.75)
        }
    }
}
