//
//  CategoryItemView.swift
//  TouchDown
//
//  Created by Vedant Patil on 14/02/24.
//

import SwiftUI

struct CategoryItemView: View {
    //MARK:- PROPERTIES
    let category: Category
    
    //MARK:- VIEW
    var body: some View {
        
                HStack(alignment: .center,spacing: 6){
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(category.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30,height: 30,alignment: .center)
                            .foregroundColor(.gray)
                    })
                    
                    Text(category.name.uppercased())
                        .fontWeight(.light)
                        .foregroundColor(.gray)
                
                }//:Hstack
                .padding()
                .background(Color.white.cornerRadius(12))
                .background(
                   RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray,lineWidth: 1)
                )
    }
}

#Preview {
    CategoryItemView(category: categories[0])
}
