//
//  AddToCartDetailView.swift
//  TouchDown
//
//  Created by Vedant Patil on 16/02/24.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - PROPERTY
    @EnvironmentObject var shop : Shop
    
    // MARK: - BODY
    var body: some View {
      Button(action: {
      }, label: {
        Spacer()
        Text("Add to cart".uppercased())
          .font(.system(.title2, design: .rounded))
          .fontWeight(.bold)
          .foregroundColor(.white)
        Spacer()
      }) //: BUTTON
      .padding(15)
      .background(
        Color(
            red: shop.selectedProduct?.color[0] ?? sampleProduct.color[0],
            green: shop.selectedProduct?.color[1] ?? sampleProduct.color[1],
            blue: shop.selectedProduct?.color[2] ?? sampleProduct.color[2]
        )
      )
      .clipShape(Capsule())
    }
}

#Preview {
    AddToCartDetailView()
        .environmentObject(Shop())
}
