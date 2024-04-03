//
//  Constants.swift
//  TouchDown
//
//  Created by Vedant Patil on 12/02/24.
//

import SwiftUI

//COLORS

let colorBackground : Color = Color("ColorBackground")
let colorGray : Color = Color(UIColor.systemGray4)

//Data

let players : [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")
let sampleProduct : Product = products[0]

//Layout

let columnSpacing : CGFloat = 10
let rowSpacing : CGFloat = 10
var gridLayout : [GridItem] {
    return Array(repeating: GridItem(.flexible(),spacing: rowSpacing), count: 2)
}
