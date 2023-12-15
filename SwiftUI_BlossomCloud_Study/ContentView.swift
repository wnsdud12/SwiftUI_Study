//
//  ContentView.swift
//  SwiftUI_BlossomCloud_Study
//
//  Created by sumwb on 12/13/23.
//

import SwiftUI

struct ContentView: View {
  let background = Color.black
  
  var body: some View {
    NavigationView {
      ZStack(alignment: .top) {
        Color.black.ignoresSafeArea()
        LoginView()
      }
    }
  }
}

#Preview {
    ContentView()
}
