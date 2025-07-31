//
//  PlaceIncorrect1.swift
//  RecallMe
//
//  Created by Saanvi on 7/31/25.
//

import SwiftUI

struct PlaceIncorrect1: View {
    let navyBlue = Color(red: 0, green: 0.18823529411764706, blue: 0.3764705882352941)
    let skyBlue = Color(red: 0.058823529411764705, green: 0.5254901960784314, blue: 0.8313725490196079)
    let lightBlue = Color(red:0.023529411764705882, green:0.3607843137254902, blue:0.615686274509804)
    let customGray = Color(red:0.9333333333333333, green:0.9333333333333333, blue:0.9333333333333333)
    
    var body: some View {
        NavigationStack {
            ZStack{
                Color(navyBlue).ignoresSafeArea()
                RoundedRectangle(cornerRadius: 50)
                    .fill(Color.white)
                    .padding(30)
                    .shadow(radius: 30)
                VStack {
                    Text("Incorrect!")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.red)
                    Text("This location is your home, not your friend's home!")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .padding(.top, 10)
                    
                    
                    NavigationLink(destination: NameThatPlace()) {
                        HStack{
                            
                            Text("Try Again")
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
                    .font(.title)
                    .fontWeight(.bold)
                    .shadow(radius: 15)
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    PlaceIncorrect1()
}
