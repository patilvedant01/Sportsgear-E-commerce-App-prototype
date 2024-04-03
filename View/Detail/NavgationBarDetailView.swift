//
//  NavgationBarDetailView.swift
//  TouchDown
//
//  Created by Vedant Patil on 14/02/24.
//

import SwiftUI

struct NavgationBarDetailView: View {
    //MARK:- PROPERTIES
    @EnvironmentObject var shop : Shop
    
    //MARK:- VIEW
    var body: some View {
        HStack{
            Button(action: {
                shop.showingProduct = false
                shop.selectedProduct = nil
            }, label: {
                Image(systemName: "chevron.left")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.white)
                })
                    
            })
        }
    }
}

#Preview {
    NavgationBarDetailView()
        .background(Color.blue)
        .environmentObject(Shop())
}
