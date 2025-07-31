//
//  PlaceCorrect1.swift
//  RecallMe
//
//  Created by Saanvi on 7/31/25.
//

import SwiftUI

struct PlaceCorrect1: View {
    var body: some View {
        let navyBlue = Color(red: 0, green: 0.18823529411764706, blue: 0.3764705882352941)
        let skyBlue = Color(red: 0.058823529411764705, green: 0.5254901960784314, blue: 0.8313725490196079)
        let lightBlue = Color(red:0.023529411764705882, green:0.3607843137254902, blue:0.615686274509804)
        let customGray = Color(red:0.9333333333333333, green:0.9333333333333333, blue:0.9333333333333333)
        NavigationStack {
            
                VStack {
                    Text("🎉 Correct! 🎉")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.green)
                    Text("This location is your home!")
                        .font(.title2)
                        .padding(.top, 10)
                        .multilineTextAlignment(.center)
                    
                    NavigationLink(destination: NameThatPlace1()) {
                        HStack{
                            
                            Text("Continue")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .frame(width: 250, alignment: .center)
                        }
                    }
                    .padding()
                    .background(LinearGradient(gradient: Gradient(colors: [navyBlue, lightBlue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                    .cornerRadius(10)
                    .font(.title3)
                    .fontWeight(.bold)
                    .shadow(radius: 15)
                }
                
            
        }
      }
    }


#Preview {
    PlaceCorrect1()
}
