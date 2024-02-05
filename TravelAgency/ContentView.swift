//
//  ContentView.swift
//  TravelAgency
//
//  Created by Joao Leal on 2/4/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            ScrollView{
                DiscoverCategoriesView()
                PopularDestinationsView()
                PopularRestaurantsView()
                TrendingCreatorsView()
            }
            .navigationTitle("Discover")
        }
    }
}

struct Destinations: Hashable {
    let city, country: String
    let landscape: String
}

struct PopularDestinationsView: View {
    
    let destinations: [Destinations] = [
        .init(city: "Paris", country: "France", landscape: "paris"),
        .init(city: "Stow On The Wold", country: "United Kingdom", landscape: "cotswolds"),
        .init(city: "Glasgow", country: "Scotland", landscape: "scotland"),
        .init(city: "Paris", country: "France", landscape: "ladignac"),
        
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
                        VStack(alignment: .leading, spacing: 0){
                            
                            Image(destination.landscape)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 110, height: 100)
                            
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
                        
                        .background(.ultraThinMaterial)
                        
                        .clipShape(.rect(cornerRadius: 10))
                        .shadow(color: .gray, radius: 4, y: 2)
                        .padding(.bottom)
                    }
                }.padding(.horizontal)
            }
        }
    }
}

struct User: Hashable {
    let name, imageName: String
}

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
    ContentView()
}


struct Restaurant: Hashable {
    let name, imageName: String
}


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
                        .background(.ultraThinMaterial)
                        .clipShape(.rect(cornerRadius: 10))
                        .shadow(color: .gray, radius: 4, y: 2)
                        .padding(.bottom)
                    }
                }.padding(.horizontal)
            }
        }
    }
}















struct Category: Hashable {
    let name, imageName: String
}



struct DiscoverCategoriesView: View {
    
    let categories: [Category] = [
        .init(name: "Art", imageName: "paintpalette.fill"),
        .init(name: "Sport", imageName: "sportscourt.fill"),
        .init(name: "Live Events", imageName: "music.mic"),
        .init(name: "Food", imageName: "music.mic"),
        .init(name: "History", imageName: "music.mic")
    ]
    
    var body: some View {
        ScrollView(.horizontal){
            HStack(alignment: .top, spacing: 14){
                ForEach(categories, id: \.self) { category in
                    VStack{
                        Image(systemName: category.imageName)
                            .font(.system(size: 20))
                            .foregroundStyle(.white)
                            .frame(width: 64, height: 64)
                            .background(.gray)
                            .clipShape(Circle())
                            .shadow(color: .gray, radius: 5, x: 0.0, y:2)
                        Text(category.name)
                            .font(.system(size: 12, weight: .semibold))
                    } .frame(width: 68)
                }
                
            }
            .padding(.horizontal)
            
        }
        .scrollIndicators(.hidden)
    }
}
