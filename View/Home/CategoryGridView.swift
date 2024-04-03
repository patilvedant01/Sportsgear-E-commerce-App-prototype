//
//  CategoryGridView.swift
//  TouchDown
//
//  Created by Vedant Patil on 14/02/24.
//

import SwiftUI

struct CategoryGridView: View {
    //MARK:- PROPERTIES
    
    //MARK:- VIEW
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            LazyHGrid(rows: gridLayout,alignment: .center, spacing: columnSpacing,pinnedViews: [], content: {
                Section(header: SectionView(header: true), footer: SectionView(header: false) ){
                    ForEach(categories){category in
                        CategoryItemView(category: category)
                    }//:loop
                }//:section
            })
            .frame(height: 140)
            .padding(.vertical,10)
            .padding(.horizontal,15)
        }//scroll
        .background(colorBackground)
    }
}

#Preview {
    CategoryGridView()
}
