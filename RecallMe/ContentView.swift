//
//  ContentView.swift
//  RecallMe
//
//  Created by Saanvi on 7/28/25.
//
import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    
    var body: some View {
        let navyBlue = Color(red: 0, green: 0.18823529411764706, blue: 0.3764705882352941)
        let skyBlue = Color(red: 0.058823529411764705, green: 0.5254901960784314, blue: 0.8313725490196079)
        let lightBlue = Color(red:0.023529411764705882, green:0.3607843137254902, blue:0.615686274509804)
        NavigationStack {
            ZStack{
                Color(navyBlue).ignoresSafeArea()
                RoundedRectangle(cornerRadius: 50)
                    .fill(Color.white)
                    .padding(30)
                    .shadow(radius: 30)
                VStack{
                    
                    Text("Welcome to RecallMe!")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                        .foregroundColor(navyBlue)
                        .padding(5)
                        .multilineTextAlignment(.center)
                        
                    
                    Image("brain")
                        .resizable()
                        .frame(width:100, height:100)
                        .padding(5)
                    Text("What is your name?")
                        .font(.title3)
                    TextField("name", text: $name)
                        .multilineTextAlignment(.center)
                        .border(Color.gray, width:1)
                        .font(.title2)
                        .frame(width: 280)
                        .padding(5)
                    
                    NavigationLink(destination: Home(name: name)) {
                        Text("Next")
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
                        .navigationBarBackButtonHidden(true)
                }
                .navigationBarBackButtonHidden(true)
            }
            .navigationBarBackButtonHidden(true)
        }
        .navigationBarBackButtonHidden(true)
    }
    
    
}

#Preview {
    ContentView()
        .modelContainer(for: ContactItem.self)
}

