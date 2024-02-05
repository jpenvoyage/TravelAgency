//
//  TrendingCategoriesView.swift
//  TravelAgency
//
//  Created by Joao Leal on 05/02/2024.
//

import SwiftUI

struct TrendingCreatorsView: View {
    
    let users: [User] = [
        .init(name: "Joao", imageName: "jao"),
            .init(name: "Joao Paulo", imageName: "jao"),
            .init(name: "Joao Leal", imageName: "jao")
    
    ]
    
    var body: some View {
        VStack {
            HStack{
                Text("Trending Creators")
                    .font(.system(size: 12, weight: .semibold))
                Spacer()
                Text("See all")
                .font(.system(size: 12, weight: .semibold)) }
            .padding(.horizontal)
            .padding(.top)
            
            ScrollView(.horizontal) {
                HStack(alignment: .top, spacing: 12){
                    ForEach(users, id: \.self) { user in
                        
                        VStack{
                            Image(user.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                            
                            Text(user.name)
                                .font(.system(size: 12, weight: .semibold))
                                .multilineTextAlignment(.center)
                        }
                        .frame(width: 60)
                            .shadow(color: .gray, radius: 5, x: 0.0, y:2)
                            .padding(.bottom)
                    }
                }.padding(.horizontal)
            }
        }
    }
}

#Preview {
    TrendingCreatorsView()
}
