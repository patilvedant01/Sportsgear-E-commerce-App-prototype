//
//  SectionView.swift
//  TouchDown
//
//  Created by Vedant Patil on 14/02/24.
//

import SwiftUI

struct SectionView: View {
    //MARK:- PROPERTIES
    let header: Bool
    
    //MARK:- VIEW
    var body: some View {
        VStack {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: header ? 90 : -90))
            
            Spacer()
        }
        .frame(width: 85)
        .background(colorGray.cornerRadius(12))
    }
}

#Preview {
    SectionView(header: true)
}
