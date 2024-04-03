//
//  ContentView.swift
//  TouchDown
//
//  Created by Vedant Patil on 12/02/24.
//

import SwiftUI

struct ContentView: View {
   //MARK:- PROPERTIES
    @EnvironmentObject var shop: Shop
    
    //MARK:- VIEW
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack {
                    NavigationBarView()
                        .padding(.horizontal,20)
                        .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.05), radius: 5,x: 0,y: 5)
                    
                    ScrollView(.vertical,showsIndicators: false) {
                        VStack {
                            FeaturedTabView()
                                .padding(.top,10)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout, content: {
                                ForEach(products){product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            shop.showingProduct = true
                                            shop.selectedProduct = product
                                        }
                                }
                            })
                            
                            TitleView(title: "Brands")
                            
                            ScrollView(.horizontal,showsIndicators: false){
                                LazyHGrid(rows: gridLayout, content: {
                                    ForEach(brands){brand in
                                        BrandItemView(brand: brand)
                                            .padding(.vertical,5)
                                            .padding(.leading,3)
                                    }
                                })
                            }
                            .padding()
                            .frame(height: 250)
                            
                            FooterView()
                                .padding(.horizontal)
                        }//:VStack
                        .background(colorBackground)
                    }//Scroll
                }//:ZStack
                .ignoresSafeArea(.all)
            } else {
                ProductDetailView()
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(Shop())
}
