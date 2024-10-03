//
//  PostView.swift
//  instagram
//
//  Created by Natalie Ammerman on 9/17/24.
//

import SwiftUI

struct PostView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var isLiked: Bool = false
    @State private var isBookmarked: Bool = false
    @State private var isDarkMode: Bool = false
    //@State private var likes: String = "1 million"
    //@State private var likesAndOne: String = "1 million and one"
    
    var buttonColor: Color {
        return colorScheme == .dark ? .white : .black
    }
    
    var body: some View {
        NavigationStack() {
            ZStack() {
                VStack(alignment: .leading, spacing: 11) {
                    HStack {
                        Image(.adele).resizable().scaledToFit().frame(width: 30).clipShape(Circle())
                        Text("constructiontwerker47").font(.subheadline).bold()
                        Spacer()
                        NavigationLink {
                            ModeView(isBookmarked: $isBookmarked)
                        } label: {
                            Image(systemName: "ellipsis").foregroundStyle(buttonColor)
                        }
                    }
                    .padding(.horizontal, 8)
                    Image(.butterflie).resizable().scaledToFit()
                    HStack(spacing: 16) {
                        Button(action: {
                            self.isLiked.toggle()
                        }) {
                            Image(systemName: isLiked ? "heart.fill" : "heart")
                                .foregroundStyle(isLiked ? .red : buttonColor)
                        }
                        Image(systemName: "message")
                        Image(systemName: "paperplane")
                        Spacer()
                        Button(action: {
                            self.isBookmarked.toggle()
                        }) {
                            self.isBookmarked == true ? Image(systemName:"bookmark.fill").foregroundStyle(buttonColor) : Image(systemName: "bookmark").foregroundStyle(buttonColor)
                        }
                    }
                    .font(.title2)
                    .padding(.horizontal, 8)
                    VStack() {
                        HStack {
                            Text(self.isLiked == true ? "1 million and one likes" : "1 million likes").font(.footnote).fontWeight(.semibold)
                            Spacer()
                        }
                        .padding(.horizontal, 8)
                        .padding(.vertical, 1)
                        HStack {
                            Text("**constructiontwerker47** kinda smells like updog in here").font(.footnote)
                            Spacer()
                        }
                        .padding(.horizontal, 8)
                        .padding(.vertical, 1)
                        HStack {
                            Text("Auguary 33").font(.caption).foregroundStyle(.secondary)
                            Spacer()
                        }
                        .padding(.horizontal, 8)
                        .padding(.vertical, 1)
                    }
                }
            }
        }
    }
}
    
    

#Preview {
    PostView()
}
