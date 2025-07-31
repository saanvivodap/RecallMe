//
//  Home.swift
//  RecallMe
//
//  Created by Saanvi on 7/30/25.
//

import SwiftUI

struct Home: View {
    let name: String
    
    var body: some View {
        let navyBlue = Color(red: 0, green: 0.18823529411764706, blue: 0.3764705882352941)
        //let skyBlue = Color(red: 0.058823529411764705, green: 0.5254901960784314, blue: 0.8313725490196079)
        let lightBlue = Color(red:0.023529411764705882, green:0.3607843137254902, blue:0.615686274509804)
        let customGray = Color(red:0.9333333333333333, green:0.9333333333333333, blue:0.9333333333333333)
        
            NavigationStack {
                ZStack{
                    Color(customGray).ignoresSafeArea()
                VStack {
                    VStack{
                        Text("Welcome, \(name)!")
                            .font(.system(size: 40))
                            .fontWeight(.black)
                            .multilineTextAlignment(.center)
                            .padding(5)
                        Text("Select a tool to get started:")
                            .multilineTextAlignment(.center)
                    }
                    .padding(20)
                    
                    NavigationLink(destination: PhotoMatching()) {
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
                    .background(LinearGradient(gradient: Gradient(colors: [navyBlue, lightBlue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                    .cornerRadius(10)
                    .font(.title)
                    .fontWeight(.bold)
                    .shadow(radius: 15)
                    
                    NavigationLink(destination: ContentView()) {
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
                    .shadow(radius: 15)
                    
                    NavigationLink(destination: NameThatPlace()) {
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
                    .shadow(radius: 15)
                    
                    NavigationLink(destination: ContentView()) {
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
                    .shadow(radius: 15)
                    
                    NavigationLink(destination: ContactListView()) {
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
                    .shadow(radius: 15)
                    
                    .modelContainer(for: ContactItem.self)
                }
                .padding()
                .navigationBarBackButtonHidden(true)
                
            }
        }
    }
}
#Preview {
    Home(name: "")
}
