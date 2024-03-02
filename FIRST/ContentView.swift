//
//  ContentView.swift
//  FIRST
//
//  Created by Владислав Шляховенко on 3/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    GeometryReader { geometry in
          ScrollView {
            VStack {
              ForEach(0..<101) { index in
                Text("\(index)").frame(width: geometry.size.width, alignment: .center)
              }
            }
          }
          .safeAreaInset(edge: .bottom) {
            Rectangle()
              .foregroundStyle(.red.opacity(0.5))
              .frame(height: 50)
          }
        }
    }
}

#Preview {
    ContentView()
}
