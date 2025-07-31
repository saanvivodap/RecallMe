//
//  PhotoMatching.swift
//  RecallMe
//
//  Created by Saanvi on 7/30/25.
//

import SwiftUI

struct PhotoMatching: View {
    let navyBlue = Color(red: 0, green: 0.18823529411764706, blue: 0.3764705882352941)
    let skyBlue = Color(red: 0.058823529411764705, green: 0.5254901960784314, blue: 0.8313725490196079)
    let lightBlue = Color(red:0.023529411764705882, green:0.3607843137254902, blue:0.615686274509804)
  @State private var selections: [String] = Array(repeating: "", count: 4)
  @State private var showConfetti = false

  let images = ["Shrek", "Fiona", "Felicia", "Fergus"]
  let correctAnswers = ["Dad", "Mom", "Sister", "Brother"]
  let options = ["Mom", "Dad", "Sister", "Brother"]

  var body: some View {
    NavigationStack {
        VStack(spacing: 30) {
            Text("Match the Family Members!")
                .font(.system(size: 40))
                .fontWeight(.black)
                .multilineTextAlignment(.center)
                
            
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
                Text("Check")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .navigationBarBackButtonHidden(true)
                    .frame(width: 250)
            }
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [navyBlue, lightBlue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
            .cornerRadius(10)
            .shadow(radius: 5)
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
