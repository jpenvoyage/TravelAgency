//
//  PopularDestinationsView.swift
//  TravelAgency
//
//  Created by Joao Leal on 05/02/2024.
//

import SwiftUI

struct PopularDestinationsView: View {
    
    let destinations: [Destinations] = [
        .init(city: "Paris", country: "France", landscape: "scotland"),
        .init(city: "Stow On The Wold", country: "United Kingdom", landscape: "cotswolds"),
        .init(city: "Glasgow", country: "Scotland", landscape: "scotland"),
        .init(city: "Paris", country: "France", landscape: "scotland"),
        
    ]
    
    var body: some View {
        VStack {
            HStack{
                Text("Popular Destinations")
                    .font(.system(size: 12, weight: .semibold))
                Spacer()
                Text("See all")
                .font(.system(size: 12, weight: .semibold)) }
            .padding(.horizontal)
            .padding(.top)
            
            ScrollView(.horizontal) {
                HStack(spacing: 12){
                    ForEach(destinations, id: \.self) { destination in
                        VStack(alignment: .center, spacing: 0){
                            
                            Image(destination.landscape)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 130, height: 100)
                            
                                .padding(.horizontal, 1)
                                .clipShape(.rect(cornerRadius: 7))
                                .padding(.vertical, 6)
                                .padding(.bottom, 4)
                            
                            Text(destination.city)
                                .font(.system(size: 12))
                                .fontWeight(.semibold)
                                .padding(.horizontal, 10)
                            Text(destination.country)
                                .font(.system(size: 12))
                                .fontWeight(.semibold)
                                .padding(.horizontal, 10)
                        }
                        .asTile()
                        
                        .padding(.bottom)
                    }
                }.padding(.horizontal)
            }
        }
    }
}




#Preview {
    PopularDestinationsView()
  
}
