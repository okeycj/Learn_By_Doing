//
//  ContentView.swift
//  Learn by Doing
//
//  Created by Chijindu Azubuike on 03/04/2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    var cards: [Card] = cardData
    
    // MARK: - CONTENT
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 30) {
                ForEach(cards) { item in
                    CardView(card: item)
                }
            }
            .padding(30)
        }
    }
}

// MARK: - PREVIEW

#Preview {
    ContentView()
}
