//
//  ModeView.swift
//  instagram
//
//  Created by Natalie Ammerman on 10/1/24.
//

import SwiftUI

struct ModeView: View {
    @Environment(\.colorScheme) var colorScheme
    @Binding var isBookmarked: Bool
    
    var buttonColor: Color {
        return colorScheme == .dark ? .white : .black
    }
    
    var body: some View {
        ZStack() {
            Button(action: {
                self.isBookmarked.toggle()
            }) {
                Image(systemName: isBookmarked ? "bookmark.fill" : "bookmark").font(.system(size: 60)).foregroundStyle(buttonColor)
            }
        }
    }
}

#Preview {
    @Previewable @State var isBookmarked = false
    ModeView(isBookmarked: $isBookmarked)
}
