//
//  FeaturedHomeView.swift
//  TouchDown
//
//  Created by Vedant Patil on 12/02/24.
//

import SwiftUI

struct FeaturedHomeView: View {
    //MARK:- PROPERTIES
    let player : Player
    
    //MARK:- VIEW
    var body: some View {
        
            Image(player.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(12)
                
    }
}

#Preview {
    FeaturedHomeView(player: players[0])
}
