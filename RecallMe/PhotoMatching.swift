//
//  PhotoMatching.swift
//  RecallMe
//
//  Created by Saanvi on 7/30/25.
//

import SwiftUI

struct PhotoMatching: View {
  @State private var selections: [String] = Array(repeating: "", count: 4)
  @State private var navigateToConfetti = false
  @State private var navigateToIncorrect = false

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

            Menu {
              ForEach(options, id: \ .self) { option in
                Button(option) {
                  selections[index] = option
                }
              }
            } label: {
              Text(selections[index].isEmpty ? "Select relation" : selections[index])
                .foregroundColor(selections[index].isEmpty ? .gray : .primary)
                .frame(width: 150)
                .padding(.vertical, 10)
                .background(Color(.systemGroupedBackground))
                .cornerRadius(8)
            }
          }
                                    }                              
            
            Button(action: checkAnswers) {
                Text("Check")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    
                    .frame(width: 250)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(12)
        }
        .padding(.top)

        NavigationLink("", destination: ConfettiView(), isActive: $navigateToConfetti).hidden()
        NavigationLink("", destination: IncorrectView(), isActive: $navigateToIncorrect).hidden()
      }
      .padding()
    }
  }

  func checkAnswers() {
    if selections == correctAnswers {
      navigateToConfetti = true
    } else {
      navigateToIncorrect = true
    }
  }
}

#Preview {
    PhotoMatching()
}
