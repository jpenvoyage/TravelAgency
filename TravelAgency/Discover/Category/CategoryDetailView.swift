//
//  CategoryDetailView.swift
//  TravelAgency
//
//  Created by Joao Leal on 07/02/2024.
//
import SwiftUI
import Kingfisher
import SDWebImageSwiftUI

struct CategoryDetailView: View {
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
                                    KFImage(URL(string: num.thumbnail))
                                   
                                        .resizable()
                                        .scaledToFill()
                                    
                                    Text(num.name)
                                        .font(.system(size: 12, weight: .semibold))
                                        .padding()
                                
                               
                            }
                                .asTile()
                                .padding()
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
    CategoryDetailView()
}
