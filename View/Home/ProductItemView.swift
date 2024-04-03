//
//  ProductItemView.swift
//  TouchDown
//
//  Created by Vedant Patil on 14/02/24.
//

import SwiftUI

struct ProductItemView: View {
    //MARK:- PROPERTIES
    let product : Product
    
    //MARK:- VIEW
    var body: some View {
        VStack(alignment: .leading, spacing: 6){
            //Photo
            ZStack {
                Image(product.image)
                    .resizable()
                .scaledToFit()
            }
            .background(Color(red: product.color[0], green: product.color[1], blue: product.color[2]))
            .frame(width: 160,height: 160)
            .cornerRadius(12)
                
            //Name
            Text("\(product.name)")
                .fontWeight(.black)
                .font(.title3)
                
            
            //Price
            Text("$\(product.price)")
                .foregroundColor(.gray)
                .fontWeight(.semibold)
            
        }//:VStack
        .padding(.horizontal)
    }
}

#Preview {
    ProductItemView(product: products[0])
}
