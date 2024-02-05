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
struct PopularDestinationsView: View {
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
                HStack(spacing: 5){
                    ForEach(0..<5, id: \.self) { num in
                        Spacer()
                            .frame(width: 120, height: 150)
                            .background(.gray)
                            .clipShape(.rect(cornerRadius: 10))
                            .shadow(color: .gray, radius: 4, y: 2)
                            .padding(.bottom)
                    }
                }.padding(.horizontal)
            }
        }
    }
}

struct TrendingCreatorsView: View {
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
                HStack(spacing: 5){
                    ForEach(0..<15, id: \.self) { num in
                        Spacer()
                            .frame(width: 50, height: 50)
                            .background(.gray)
                            .clipShape(Circle())
                            .shadow(color: .gray, radius: 5, x: 0.0, y:2)
                            .padding(.bottom)
                    }
                }.padding(.horizontal)
            }
        }
    }
}



struct PopularRestaurantsView: View {
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
                HStack(spacing: 5){
                    ForEach(0..<5, id: \.self) { num in
                        Spacer()
                            .frame(width: 200, height: 65)
                            .background(.gray)
                            .clipShape(.rect(cornerRadius: 10))
                            .shadow(color: .gray, radius: 4, y: 2)
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


struct Category {
    let name, imageName: String
}


struct DiscoverCategoriesView: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack(spacing: 8){
                ForEach(0..<15, id: \.self) { oi in
                    VStack{
                        Spacer()
                            .frame(width: 50, height: 50)
                            .background(.gray)
                            .clipShape(Circle())
                            .shadow(color: .gray, radius: 5, x: 0.0, y:2)
                        Text("Art")
                            .font(.system(size: 12, weight: .semibold))
                    }
                }
                
            }
            .padding(.horizontal)
            
        }
        .scrollIndicators(.hidden)
    }
}
