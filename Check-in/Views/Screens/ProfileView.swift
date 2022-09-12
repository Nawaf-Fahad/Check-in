//
//  ProfileView.swift
//  Check-in
//
//  Created by Nawaf Alotaibi on 07/09/2022.
//

import SwiftUI

struct ProfileView: View {
    @State private var firstname=""
    @State private var lastname=""
    @State private var companyname=""
    @State private var bio=""

    
    var body: some View {
        VStack{
            ZStack{
                NameBackgroundView()
                
                HStack(spacing:16){
                    ZStack{
                        AvatarView(size: 84)
                        EditView()
                        
                    }
                    .padding(.leading,12)

                    VStack(spacing:1){
                        TextField("First Name",text: $firstname)
                            .ProfileNameStyle()
                        
                        TextField("Last Name",text: $lastname)
                            .ProfileNameStyle()
                        
                        TextField("Company name",text: $companyname)
                    }
                    .padding(.trailing,16)
                }
                .padding()
            }
            VStack(alignment: .leading, spacing: 8){
                CharactarsRemainView(currentCount: bio.count)
                
                TextEditor(text: $bio)
                    .frame(height:100)
                    .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.secondary,lineWidth:1))
            }
            .padding(.horizontal,20)
            
            Spacer()
            
            Button{
                
            } label: {
                DDGButton(title: "Create Profile")
            }
        }
        .navigationTitle("Profile")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ProfileView()
            
        }
    }
}


struct EditView: View {
    var body: some View {
        Image(systemName: "square.and.pencil")
            .resizable()
            .scaledToFit()
            .frame(width: 14, height: 14)
            .foregroundColor(.white)
            .offset(y: 30)
    }
}

struct NameBackgroundView: View {
    var body: some View {
        Color(.secondarySystemBackground)
            .frame(height:130)
            .cornerRadius(12)
            .padding(.horizontal)
    }
}



struct CharactarsRemainView: View {
    var currentCount : Int
    var body: some View {
        Text("Bio: ")
            .font(.callout)
            .foregroundColor(.secondary)
        +
        Text("\(100-currentCount)")
            .bold()
            .font(.callout)
            .foregroundColor(currentCount <= 100 ? .brandPrimary : Color(.systemPink))
        +
        Text(" Characters Remain")
            .font(.callout)
            .foregroundColor(.secondary)
    }
}
