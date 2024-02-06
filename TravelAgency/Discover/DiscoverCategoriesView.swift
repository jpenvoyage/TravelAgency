//
//  DiscoverCategoriesView.swift
//  TravelAgency
//
//  Created by Joao Leal on 05/02/2024.
//

import SwiftUI

struct Category2: Hashable {
    let name, imageName: String
}


struct DiscoverCategoriesView: View {
    
    let categories: [Category2] = [
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
                        CategoryDetailsView()
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












struct ActivityIndicatorView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let aiv = UIActivityIndicatorView(style: .large)
        aiv.startAnimating()
        
        return aiv
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        
    }
    
    typealias UIViewType = UIActivityIndicatorView
}

struct CategoryDetailsView: View {
    @State var vm = UserInterface()
    
    var body: some View {
        ZStack{
           // if  vm.isLoading{
                VStack {
                    ActivityIndicatorView()
                    Text("Currently Loading")
                        .font(.system(size: 16, weight: .semibold))
                }.background(.white)
           // } else {
                ZStack{
                    NavigationStack{
                        ScrollView{
                            ForEach(vm.places, id: \.self) {num in
                                
                                VStack(alignment: . leading, spacing: 0){
                                    Image("scotland")
                                        .resizable()
                                        .aspectRatio(0.9, contentMode: .fill)
                                    
                                    Text(num.name)
                                        .font(.system(size: 12, weight: .semibold))
                                        .padding()
                                
                                .asTile()
                                .padding()
                            }
                        }
                        .onAppear{
                            vm.fetchData()
                        }
                    }
                }.navigationBarTitleDisplayMode(.inline)
                    .navigationTitle("Category")
            }
        }
    }}
#Preview {
    CategoryDetailsView()
}


//NavigationStack{
//  NavigationLink {
//    Text("jogn")
//  } label: {
//   Text("paul")
// }

//}
