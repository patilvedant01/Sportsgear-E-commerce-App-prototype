//
//  BrandItemView.swift
//  TouchDown
//
//  Created by Vedant Patil on 14/02/24.
//

import SwiftUI

struct BrandItemView: View {
    //MARK:- PROPERTIES
    let brand: Brand
    //MARK:- VIEW
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray,lineWidth: 2)
            )
    }
}

#Preview {
    BrandItemView(brand: brands[0])
}
