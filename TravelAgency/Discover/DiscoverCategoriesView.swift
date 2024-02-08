//
//  DiscoverCategoriesView.swift
//  TravelAgency
//
//  Created by Joao Leal on 05/02/2024.
//

import SwiftUI

struct NavigationLazyView<Content: View>: View {
    let build: () -> Content
    init(_ build: @autoclosure @escaping () -> Content) {
        self.build = build
    }
    var body: Content {
        build()
    }
}


struct DiscoverCategoriesView: View {
    
    let categories: [Category2] = [
        .init(name: "Art", imageName: "paintpalette.fill"),
        .init(name: "Sports", imageName: "sportscourt.fill"),
        .init(name: "Live Events", imageName: "music.mic"),
        .init(name: "Food", imageName: "music.mic"),
        .init(name: "History", imageName: "music.mic")
    ]
    
    var body: some View {
        ScrollView(.horizontal){
            HStack(alignment: .top, spacing: 14){
                ForEach(categories, id: \.self) { category in
                    NavigationLink {
                        NavigationLazyView(CategoryDetailView(name: category.name))
                        
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
                        
                    }.buttonStyle(PlainButtonStyle())
                    
                }
                
            }
            .padding(.horizontal)
            
        }
        .scrollIndicators(.hidden)
    }
}






//NavigationStack{
//  NavigationLink {
//    Text("jogn")
//  } label: {
//   Text("paul")
// }

//}
