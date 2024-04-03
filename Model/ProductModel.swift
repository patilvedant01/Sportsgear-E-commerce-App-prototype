//
//  ProductModel.swift
//  TouchDown
//
//  Created by Vedant Patil on 14/02/24.
//

import SwiftUI

struct Product: Codable,Identifiable {
    var id : Int
    var name: String
    var image : String 
    var price: Int
    var description : String
    var color : [Double]
}
