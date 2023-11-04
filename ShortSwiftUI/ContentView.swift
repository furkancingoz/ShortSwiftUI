//
//  ContentView.swift
//  ShortSwiftUI
//
//  Created by Furkan Cingöz on 4.11.2023.
//

import SwiftUI

struct ContentView: View {
  @Environment(AppService.self) var appService
  var body: some View {
    VStack{
      List {
        ForEach(appService.posts) { post in
          NavigationLink {
DetailView(post: post)
          } label: {
            cell(post:post)
          }
        }
      }
    }
    .task {
      do {
        try await appService.fetchPost()
      } catch {
        print(error.localizedDescription)
      }
    }.navigationTitle("SwiftUI")
      .toolbar(content: {
        ToolbarItem(placement: .primaryAction) {
          Button(action: {
            appService.isDestinationViewPresented.toggle()
          }, label: {
            Image(systemName: "chevron.right")
          })
        }
      })
      .sheet(isPresented: Bindable(appService).isDestinationViewPresented, content: {
        DestinationView()
      })
  }
  func cell(post: Post) -> some View {
    VStack(alignment: .leading, content: {
      Text(post.title)
      Text(post.body)
        .foregroundStyle(.gray)
        .font(.caption)
    })
  }
}

#Preview {
  NavigationView{
    ContentView()
  }
}
