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
    
    let location : DDGLocation
    var body: some View {

            VStack(spacing: 16){
                BannerImageView(image: location.createBannerImage())
                HStack{
                    AddressView(address: location.address)
                    Spacer()
                }
                .padding(.horizontal)
                
                DescriptionView(text: location.description)
                
         
                ZStack{
                    Capsule()
                        .frame(height:80)
                        .foregroundColor(Color(.secondarySystemBackground))
                    
                    HStack(spacing: 20){
                        Button{
                            
                        }label: {
                            LocationActionButton(color: .brandPrimary, imageName: "location.fill")
                        }
                        
                        Link(destination: URL(string:location.websiteURL)!, label: {
                        
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
            LocationDetailView(location: DDGLocation(record: MockData.location))
            
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

struct BannerImageView: View {
    var image:UIImage
    var body: some View {
        Image(uiImage: image)
            .resizable()
            .scaledToFill()
            .frame(height:120)
    }
}

struct AddressView: View {
    var address:String
    var body: some View {
        Label(address, systemImage: "mappin.and.ellipse")
            .font(.caption)
            .foregroundColor(.secondary)
    }
}

struct DescriptionView: View {
    var text :String
    var body: some View {
        Text(text)
            .lineLimit(3)
            .minimumScaleFactor(0.75)
            .padding(.horizontal)
    }
}
