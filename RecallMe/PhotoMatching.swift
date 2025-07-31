//
//  PhotoMatching.swift
//  RecallMe
//
//  Created by Saanvi on 7/30/25.
//

import SwiftUI

struct PhotoMatching: View {
  @State private var selections: [String] = Array(repeating: "", count: 4)
  @State private var showConfetti = false

  let images = ["Shrek", "Fiona", "Felicia", "Fergus"]
  let correctAnswers = ["Dad", "Mom", "Sister", "Brother"]
  let options = ["Mom", "Dad", "Sister", "Brother"]

  var body: some View {
    NavigationStack {
      VStack(spacing: 30) {
        Text("Match the Family Members!")
          .font(.largeTitle)
          .fontWeight(.bold)

        ForEach(0..<4, id: \ .self) { index in
          HStack(spacing: 20) {
            Image(images[index])
              .resizable()
              .scaledToFit()
              .frame(width: 100, height: 100)
              .clipShape(Circle())
              .shadow(radius: 5)

            Picker("Select relation", selection: $selections[index]) {
              ForEach(options, id: \ .self) { option in
                Text(option)
              }
            }
            .pickerStyle(MenuPickerStyle())
            .frame(width: 150)
          }
        }

        Button(action: checkAnswers) {
          Text("Submit")
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(12)
        }
        .padding(.top)
      }
      .padding()
      .navigationDestination(isPresented: $showConfetti) {
        ConfettiView()
      }
    }
  }

  func checkAnswers() {
    if selections == correctAnswers {
      showConfetti = true
    }
  }
}

#Preview {
    PhotoMatching()
}
