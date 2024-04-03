//
//  NavigationBarView.swift
//  TouchDown
//
//  Created by Vedant Patil on 12/02/24.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK:- PROPERTIES
    @State private var isAnimating : Bool = false
    
    //MARK:- VIEW
    var body: some View {
        
        HStack{
            Button(action:{
                
            }){
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.black)
                    .font(.title)
            }
            
            Spacer()
            
            LogoView()
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)){
                        isAnimating.toggle()
                    }
                })
            
            Spacer()
            
            ZStack {
                Button(action:{
                    
                }){
                    Image(systemName: "cart")
                        .foregroundColor(.black)
                        .font(.title)
                }
                
                
                Circle()
                    .foregroundColor(.red)
                    .frame(width: 14,height: 14,alignment: .center)
                    .offset(x:13,y:-10)
            }//:ZStack
        }//:HStack
    }
}

#Preview {
    NavigationBarView()
}
