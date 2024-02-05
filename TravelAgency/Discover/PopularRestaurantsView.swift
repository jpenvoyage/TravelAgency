//
//  PopularRestarauntsView.swift
//  TravelAgency
//
//  Created by Joao Leal on 05/02/2024.
//

import SwiftUI

struct PopularRestaurantsView: View {
    
    let restaurants: [Restaurant] = [
        .init(name: "Japan's Finest Tapas", imageName: "pub"),
        .init(name: "dn's Finest Tapas", imageName: "Tapas")
    ]
    
    
    
    var body: some View {
        VStack {
            HStack{
                Text("Popular Places to Eat")
                    .font(.system(size: 12, weight: .semibold))
                Spacer()
                Text("See all")
                .font(.system(size: 12, weight: .semibold)) }
            .padding(.horizontal)
            .padding(.top)
            
            ScrollView(.horizontal) {
                HStack{
                    ForEach(restaurants, id: \.self) { restaurant in
                        
                        HStack{
                            Image(restaurant.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                
                                .frame(width: 90, height: 60)
                                .clipped()
                            
                                .padding(.leading, 6)
                                .padding(.vertical, 6)
                            
                            VStack(alignment: .leading, spacing: 4)                      {
                                
                                HStack{
                                    Text(restaurant.name)
                                    Spacer()
                                    Button{
                                        //
                                    } label: {
                                        Image(systemName: "ellipsis")
                                    }
                                    
                                }
                                HStack{
                                    Image(systemName: "star.fill")
                                    Text("4.7 • Sushi • $$")
                                }
                                
                                
                                Text("Tokyo, Japan")
                                
                            }     .font(.system(size: 12, weight: .semibold))
                            
                            Spacer()
                        }
                        .frame(width: 240)
                        .asTile()
                        .padding(.bottom)
                    }
                }.padding(.horizontal)
            }
        }
    }
}



#Preview {
    PopularRestaurantsView()
   
}
