//
//  DiscoverCategoriesView.swift
//  TravelAgency
//
//  Created by Joao Leal on 05/02/2024.
//

import SwiftUI

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
                    NavigationLink {
                        Text("ddd")
                    } label: {
                        VStack{
                            Image(systemName: category.imageName)
                                .font(.system(size: 20))
                                .foregroundStyle(.orange)
                                .frame(width: 64, height: 64)
                                .background(.white)
                                .clipShape(Circle())
             
                            Text(category.name)
                                .font(.system(size: 12, weight: .semibold))
                        } .frame(width: 68)

                    }

                }
                
            }
            .padding(.horizontal)
            
        }
        .scrollIndicators(.hidden)
    }
}


struct CategoryDetailsView: View {
    var body: some View {
        
        ScrollView{
            
            Text("Demo")
        }.navigationTitle("Category")
    }
}
#Preview {
    
    DiscoverView()
}


//NavigationStack{
  //  NavigationLink {
    //    Text("jogn")
  //  } label: {
     //   Text("paul")
   // }

//}
