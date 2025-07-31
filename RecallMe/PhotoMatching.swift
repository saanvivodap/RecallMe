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
    let customGray = Color(red:0.9333333333333333, green:0.9333333333333333, blue:0.9333333333333333)
    
    @State private var selections: [String] = Array(repeating: "", count: 4)
    @State private var navigateToConfetti = false
    @State private var navigateToIncorrect = false
    
    let images = ["Shrek", "Fiona", "Felicia", "Fergus"]
    let correctAnswers = ["Dad", "Mom", "Sister", "Brother"]
    let options = ["Mom", "Dad", "Sister", "Brother"]
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
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
                        .frame(width: 250, alignment: .center)
                }
                .padding()
                .background(LinearGradient(gradient: Gradient(colors: [navyBlue, lightBlue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                .cornerRadius(10)
                .font(.title)
                .fontWeight(.bold)
                .shadow(radius: 15)
            }
            .padding(.top)
            
            NavigationLink("", destination: ConfettiView(), isActive: $navigateToConfetti).hidden()
            NavigationLink("", destination: IncorrectView(), isActive: $navigateToIncorrect).hidden()
        }
        .padding()
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
