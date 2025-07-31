//
//  LifeInOrderView.swift
//  RecallMe
//
//  Created by Scholar on 7/31/25.
//

import SwiftUI

struct LifeInOrderView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Put Your Life Events in Order")
                    .font(.title2)
                    .padding()
                ScrollView(.vertical) {
                    ForEach(Array(view.shuffledEvents.enumerated()), id: \.1.id) { index, event in
                        HStack {
                            Image(uiImage: event.image)
                                .resizable()
                                .frame(width: 80, height: 80)
                                .cornerRadius(10)
                                .padding();
                            VStack(alignment: .leading) {
                                Text(event.title)
                                    .font(.headline)
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .background(view.isCorrectOrder.isEmpty ? Color.white :(view.isCorrectOrder[index] ? Color.green.opacity(0.3) : Color.red.opacity(0.3)))
                        .cornerRadius(12)
                        .padding(.horizontal)
                    }
                }
            }
        }
    }
}
#Preview {
    LifeInOrderView()
}
