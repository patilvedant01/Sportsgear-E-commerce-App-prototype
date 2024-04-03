//
//  HeaderDetailView.swift
//  TouchDown
//
//  Created by Vedant Patil on 14/02/24.
//

import SwiftUI

struct HeaderDetailView: View {
    //MARK:- PROPERTIES
    @EnvironmentObject var shop : Shop
    
    //MARK:- VIEW
    var body: some View {
        VStack(alignment: .leading,spacing: 6, content: {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.title)
                .fontWeight(.black)
        })
    }
}

#Preview {
    HeaderDetailView()
        .environmentObject(Shop())
}
