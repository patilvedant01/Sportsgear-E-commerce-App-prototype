//
//  FeaturedTabView.swift
//  TouchDown
//
//  Created by Vedant Patil on 12/02/24.
//

import SwiftUI

struct FeaturedTabView: View {
    //MARK:- PROPERTIES
    
    
    //MARK:- VIEW
    var body: some View {
        TabView{
            ForEach(players){player in
                FeaturedHomeView(player: player)
                    .padding(.horizontal,15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .frame(height: 250)
        .background(colorBackground)
    }
}

#Preview {
    FeaturedTabView()
}
