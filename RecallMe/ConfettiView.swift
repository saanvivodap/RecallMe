//
//  ConfettiView.swift
//  RecallMe
//
//  Created by Tiger on 7/31/25.
//

import SwiftUI

import SwiftUI

struct ConfettiView: View {
  var body: some View {
    VStack {
      Text("🎉 Correct! 🎉")
        .font(.largeTitle)
        .fontWeight(.heavy)
        .foregroundColor(.green)

      Text("You matched everyone perfectly!")
        .font(.title2)
        .padding(.top, 10)
        .multilineTextAlignment(.center)
    }
  }
  }



#Preview {
    ConfettiView()
}
