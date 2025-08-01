//
//  NameThatPlace.swift
//  RecallMe
//
//  Created by Saanvi on 7/30/25.
//

import SwiftUI

struct NameThatPlace: View {
    let navyBlue = Color(red: 0, green: 0.18823529411764706, blue: 0.3764705882352941)
    let skyBlue = Color(red: 0.058823529411764705, green: 0.5254901960784314, blue: 0.8313725490196079)
    let lightBlue = Color(red:0.023529411764705882, green:0.3607843137254902, blue:0.615686274509804)
    
    var body: some View {
        NavigationStack{
            Text("Select the Location's Name:")
            .font(.system(size: 40))
            .fontWeight(.black)
            .multilineTextAlignment(.center)
            
            
            Image("home")
                .resizable()
                .frame(width:280, height: 380)
                .cornerRadius(10)
        
            NavigationLink(destination: PlaceCorrect1()) {
                HStack{
                    
                    Text("My Home")
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
            
            NavigationLink(destination: PlaceIncorrect1()) {
                HStack{
                    
                    Text("My Friend's Home")
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
    
    }
    


#Preview {
    NameThatPlace()
}
