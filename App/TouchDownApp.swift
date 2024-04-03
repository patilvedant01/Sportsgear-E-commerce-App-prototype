//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by Vedant Patil on 12/02/24.
//

import SwiftUI

@main
struct TouchdownApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(Shop())
    }
  }
}
