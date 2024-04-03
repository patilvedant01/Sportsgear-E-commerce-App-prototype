//
//  Shop.swift
//  TouchDown
//
//  Created by Vedant Patil on 16/02/24.
//

import Foundation

class Shop : ObservableObject {
    @Published var showingProduct : Bool = false
    @Published var selectedProduct : Product? = nil
}
