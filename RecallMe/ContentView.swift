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
        NavigationStack {
            ZStack{
                Color(navyBlue).ignoresSafeArea()
                RoundedRectangle(cornerRadius: 50)
                    .fill(Color.white)
                    .padding(30)
                VStack{
                    Text("Welcome to RecallMe!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(navyBlue)
                        .padding(5)
                    Text("What is your name?")
                        .font(.title3)
                    TextField("name", text: $name)
                        .multilineTextAlignment(.center)
                        .border(Color.gray, width:1)
                        .font(.title2)
                        .frame(width: 300)
                        .padding(5)
                    
                    NavigationLink(destination: Home(name: name)) {
                        Text("Next")
                            .navigationBarTitleDisplayMode(.inline)
                            .navigationBarHidden(true)
                    }
                    
                    
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

