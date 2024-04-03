//
//  TitleView.swift
//  TouchDown
//
//  Created by Vedant Patil on 14/02/24.
//

import SwiftUI

struct TitleView: View {
    //MARK:- PROPERTIES
    let title: String
    
    //MARK:- VIEW
    var body: some View {
        HStack {
            Text(title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .padding(.horizontal)
            
            Spacer()
        }
    }
}

#Preview {
    TitleView(title: "Helmets")
}
