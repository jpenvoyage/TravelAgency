//
//  PopularDestinationsView.swift
//  TravelAgency
//
//  Created by Joao Leal on 05/02/2024.
//

import SwiftUI

struct PopularDestinationsView: View {
    
    let destinations: [Destinations] = [
        .init(city: "Paris", country: "France", landscape: "scotland", latitude: 0, longitude: 0),
        .init(city: "Stow On The Wold", country: "United Kingdom", landscape: "cotswolds", latitude: 0, longitude: 0),
        .init(city: "Glasgow", country: "Scotland", landscape: "scotland", latitude: 0, longitude: 0),
        .init(city: "Paris", country: "France", landscape: "scotland", latitude: 0, longitude: 0),
        
    ]
    
    var body: some View {
        NavigationStack{
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
                            
                            NavigationLink {
                                PopularDestinationsDetailView(destination: destination)
                            } label: {
                                PopularDestinationsTile(destination: destination)
                            }
                            .buttonStyle(.plain)
                            
                            
                            .padding(.bottom)
                        }
                    }.padding(.horizontal)
                    
                }
            }
        }
    }
}

import MapKit

struct PopularDestinationsDetailView: View {
    
    
 
    @State private var cameraPosition: MapCameraPosition = .region(.userRegion)
   
    let destination: Destinations

    
    init(destination: Destinations) {
        self.destination
        self.region =
        
    var body: some View {
        

        NavigationStack{
            ScrollView {
            
                Image(destination.landscape)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 365)
                VStack(alignment: .leading){
                    Text(destination.city)
                        .font(.system(size: 18, weight: .bold))
                    Text(destination.country)
                    HStack {
                        ForEach(0..<5, id: \.self) { num in
                            Image(systemName: "star.fill")
                                .foregroundStyle(.orange)
                        }
                    }.padding(.top, 2)
                    
                    Text("Lorem Ipsum")
                        .padding(.top, 4)
                    
                    HStack{
                        Spacer()
                    }
                }.background(.ultraThinMaterial)
                
                    .padding(.horizontal)
                HStack{
                    
                    Text("Location")
                        .font(.title3)
                        .fontWeight(.semibold)
                    Spacer()
                }.padding(.horizontal)
            
                Map(position: $cameraPosition)
                    .frame(height: 300)
               
                
            }
            .navigationTitle("Title")
        }
    }
    
}


extension MKCoordinateRegion {
    static var userRegion: MKCoordinateRegion {
        return .init(center: .userLocation, latitudinalMeters: 100000,
                     longitudinalMeters: 100000)
    }
}

extension CLLocationCoordinate2D {
    static var userLocation: CLLocationCoordinate2D {
        return.init(latitude: 48.864716, longitude: 2.349014)
    }}



struct PopularDestinationsTile: View {
    
    let destination: Destinations
    var body: some View {
        
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
        
        
    }
    
}




#Preview {
     PopularDestinationsDetailView(destination: .init(city: "tokyo", country: "japan", landscape: "cotswolds", latitude: 48.864716, longitude: 2.349014))
    //PopularDestinationsView()
  
}

#Preview {
   
    PopularDestinationsView()
  
}
