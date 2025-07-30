//
//  Home.swift
//  RecallMe
//
//  Created by Saanvi on 7/30/25.
//

import SwiftUI

struct Home: View {
@State private var name: String = ""
    
    var body: some View {
        let navyBlue = Color(red: 0, green: 0.18823529411764706, blue: 0.3764705882352941)
        //let skyBlue = Color(red: 0.058823529411764705, green: 0.5254901960784314, blue: 0.8313725490196079)
        let lightBlue = Color(red:0.023529411764705882, green:0.3607843137254902, blue:0.615686274509804)
        VStack {
            VStack{
                Text("Welcome, \(name)!")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(5)
                Text("Select a game to get started:")
                    .multilineTextAlignment(.center)
            }
            .padding(20)
            
            Button {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            } label: {
                HStack{
                    Image("gallery (2)")
                        .resizable()
                        .frame(width:60, height:60)
                        .padding(5)
                    Text("Photo \nMatching")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .frame(width: 200, alignment: .leading)
                    
                }
            }
            .padding()
            //.background(navyBlue)
            .background(LinearGradient(gradient: Gradient(colors: [navyBlue, lightBlue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
            .cornerRadius(10)
            .font(.title)
            .fontWeight(.bold)
            .shadow(radius: 5)
            
            
            
            
            Button {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            } label: {
                HStack{
                    Image("calendar (2)")
                        .resizable()
                        .frame(width:60, height:60)
                        .padding(5)
                    Text("Timeline: \nLife In Order")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .frame(width: 200, alignment: .leading)
                }
            }
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [navyBlue, lightBlue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
            .cornerRadius(10)
            .font(.title)
            .fontWeight(.bold)
            .shadow(radius: 5)
            
            Button {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            } label: {
                HStack{
                    Image("location-pin (1)")
                        .resizable()
                        .frame(width:60, height:60)
                        .padding(5)
                    Text("Name \nThat Place")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .frame(width: 200, alignment: .leading)
                }
            }
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [navyBlue, lightBlue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
            .cornerRadius(10)
            .font(.title)
            .fontWeight(.bold)
            .shadow(radius: 5)
            
            Button {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            } label: {
                HStack{
                    Image("to-do-list")
                        .resizable()
                        .frame(width:60, height:60)
                        .padding(5)
                    Text("To-Do List \n& Reminders")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .frame(width: 200, alignment: .leading)
                }
            }
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [navyBlue, lightBlue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
            .cornerRadius(10)
            .font(.title)
            .fontWeight(.bold)
            .shadow(radius: 5)
            
            Button {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            } label: {
                HStack{
                    Image("user (1)")
                        .resizable()
                        .frame(width:60, height:60)
                        .padding(5)
                    Text("Emergency Contacts")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .frame(width: 200, alignment: .leading)
                }
            }
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [navyBlue, lightBlue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
            .cornerRadius(10)
            .font(.title)
            .fontWeight(.bold)
            .shadow(radius: 5)
            
            
        }
        .padding()
    }
}
#Preview {
    Home()
}
