//
//  PostView.swift
//  instagram
//
//  Created by Natalie Ammerman on 9/17/24.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 11) {
            HStack {
                Image(.adele).resizable().scaledToFit().frame(width: 30).clipShape(Circle())
                Text("constructiontwerker47").font(.subheadline).bold()
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal, 8)
            Image(.butterflaps).resizable().scaledToFit()
            HStack(spacing: 16) {
                Image(systemName: "heart")
                Image(systemName: "message")
                Image(systemName: "paperplane")
                Spacer()
                Image(systemName: "bookmark")
            }
            .font(.title2)
            .padding(.horizontal, 8)
            VStack() {
                HStack {
                    Text("1 million likes").font(.footnote).fontWeight(.semibold)
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

#Preview {
    PostView()
}
