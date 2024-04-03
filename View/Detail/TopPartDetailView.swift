//
//  TopPartDetailView.swift
//  TouchDown
//
//  Created by Vedant Patil on 14/02/24.
//

import SwiftUI

struct TopPartDetailView: View {
    //MARK:- PROPERTIES
    @State private var isAnimating : Bool = false
    @EnvironmentObject var shop : Shop
    
    //MARK:- VIEW
    var body: some View {
        HStack(alignment: .center,spacing: 6, content: {
            //price
            VStack(alignment: .leading,spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text("$\(shop.selectedProduct?.price  ?? sampleProduct.price)")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35,anchor: .leading)
            })//:Vstack
            .offset(y: isAnimating ? -50 : -75)
            .padding(.horizontal)
            
            Spacer()
            
            //photo
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        })//:HStack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)){
                isAnimating.toggle()
            }
        })
    }
}

#Preview {
    TopPartDetailView()
        .environmentObject(Shop())
}
