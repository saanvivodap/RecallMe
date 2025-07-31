//
//  IncorrectView.swift
//  RecallMe
//
//  Created by Tiger on 7/31/25.
//

import SwiftUI

struct IncorrectView: View {
  var body: some View {
    VStack(spacing: 16) {
      Text("❌ Incorrect ❌")
        .font(.largeTitle)
        .fontWeight(.heavy)
        .foregroundColor(.red)

      Text("Oops! Try matching again.")
        .font(.title2)
        .padding(.top, 10)

      .padding(.top, 20)
    }
    }
  }

#Preview {
    IncorrectView()
}
