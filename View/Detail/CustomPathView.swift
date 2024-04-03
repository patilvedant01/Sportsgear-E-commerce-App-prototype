//
//  CustomPathView.swift
//  TouchDown
//
//  Created by Vedant Patil on 15/02/24.
//

import SwiftUI

struct CustomPathView: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,byRoundingCorners: [.topLeft,.topRight],
        cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}

#Preview {
    CustomPathView()
}
