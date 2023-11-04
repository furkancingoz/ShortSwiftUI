//
//  DetailView.swift
//  ShortSwiftUI
//
//  Created by Furkan Cingöz on 4.11.2023.
//

import SwiftUI

struct DetailView: View {

  let post : Post

    var body: some View {
      Text(post.title)
        .font(.caption)
        .padding()
      Text(post.body)
    }
}

//#Preview {
//    DetailView()
//}
