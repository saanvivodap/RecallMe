//
//  ContentView.swift
//  RecallMe
//
//  Created by Saanvi on 7/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let navyBlue = Color(red: 0, green: 0.18823529411764706, blue: 0.3764705882352941)
        VStack {
            Text("Recall Me")
                .font(.title)
                .fontWeight(.bold)
            
            Button {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            } label: {
                HStack{
                    Image("gallery (2)")
                        .resizable()
                        .frame(width:70, height:70)
                    Text("Photo \nMatching")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .frame(width: 150)
                }
            }
            .padding()
            .background(navyBlue)
            .cornerRadius(10)
            .font(.title)
            .fontWeight(.bold)
            
            
            Button {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            } label: {
                HStack{
                    Image("calendar (2)")
                        .resizable()
                        .frame(width:70, height:70)
                    Text("Life In \nOrder")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .frame(width: 150)
                }
            }
            .padding()
            .background(navyBlue)
            .cornerRadius(10)
            .font(.title)
            .fontWeight(.bold)
            
            Button {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            } label: {
                HStack{
                    Image("location-pin (1)")
                        .resizable()
                        .frame(width:70, height:70)
                    Text("Name \nThat Place")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .frame(width: 150)
                }
            }
            .padding()
            .background(navyBlue)
            .cornerRadius(10)
            .font(.title)
            .fontWeight(.bold)
            
            Button {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            } label: {
                HStack{
                    Image("to-do-list")
                        .resizable()
                        .frame(width:70, height:70)
                    Text("To-Do \nList")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .frame(width: 150)
                }
            }
            .padding()
            .background(navyBlue)
            .cornerRadius(10)
            .font(.title)
            .fontWeight(.bold)
            
            Button {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            } label: {
                HStack{
                    Image("user (1)")
                        .resizable()
                        .frame(width:70, height:70)
                    Text("Emergency Contacts")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .frame(width: 150)
                }
            }
            .padding()
            .background(navyBlue)
            .cornerRadius(10)
            .font(.title)
            .fontWeight(.bold)

            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
