//
//  ContentView.swift
//  TravelAgency
//
//  Created by Joao Leal on 2/4/24.
//

import SwiftUI


extension Color {
    static let discoverBackground = Color(.init(white: 0.95, alpha: 1))
}

struct DiscoverView: View {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: UIColor.white]
    }
    
    var body: some View {
        NavigationStack {
            
            
            ZStack{
                
                LinearGradient(gradient: Gradient(colors: [Color.teal, Color.orange]), startPoint: .top, endPoint: .center)
                    .ignoresSafeArea()
                
                Color.discoverBackground
                    .offset(y:400)
                
                ScrollView{
                    
                    HStack{
                        Image(systemName: "magnifyingglass")
                       Text(" Where do you want to go?")
                        Spacer()
                    }
                            .font(.system(size: 14, weight
                                          : .semibold))
                            .foregroundStyle(.white)
                            .padding()
                            
                            .background(Color(.init(white: 1, alpha: 0.3)))
                            .clipShape(.rect(cornerRadius: 25))
                            .padding(16)
                    
                    
                    DiscoverCategoriesView()
                    
                    VStack{
                        PopularDestinationsView()
                        PopularRestaurantsView()
                        TrendingCreatorsView()
                    }.background(Color.discoverBackground)
                        .padding(.top, 32)
                        .clipShape(.rect(cornerRadius: 16))
                        .padding(.top, 32)
                }
                
            }
            
            .navigationTitle("Discover")
        }
    }
}


#Preview {
    DiscoverView()
}
