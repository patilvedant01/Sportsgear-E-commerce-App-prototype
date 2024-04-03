//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by Vedant Patil on 14/02/24.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK:- PROPERTIES
    @EnvironmentObject var shop : Shop
    
    //MARK:- VIEW
    var body: some View {
        VStack(alignment: .leading,spacing: 5, content: {
            //navBar
            NavgationBarDetailView()
                .padding(.horizontal,18)
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
        
            //Header
            HeaderDetailView()
                .padding(.horizontal)
                .padding(.top)
            
            TopPartDetailView()
                .zIndex(1)
            
            //Detail Bottom Part
            VStack(alignment: .center, content: {
                //ratings and size
                RatingsSizeView()
                    .padding(.horizontal,4)
                    .padding(.bottom,7)
                
                //description
                ScrollView(.vertical,showsIndicators: false){
                    Text("\(shop.selectedProduct?.description ??    sampleProduct.description)")
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }//:scroll
                
                //quantity and favorite
                QuantityAndFavoriteView()
                
                //add to cart
                AddToCartDetailView()
            })//:Vstack
            .padding(.horizontal)
            .background(Color.white.clipShape(CustomPathView()).padding(.top,-105))
            .zIndex(0)
        })
        .background(
            Color(red: shop.selectedProduct?.color[0] ??   sampleProduct.color[0], green: shop.selectedProduct?.color[1] ?? sampleProduct.color[1], blue: shop.selectedProduct?.color[2] ?? sampleProduct.color[2])
                .ignoresSafeArea(.all)
        )
        .offset(y: -60)
    }
}

#Preview {
    ProductDetailView()
        .environmentObject(Shop())
}
