//
//  AppService.swift
//  ShortSwiftUI
//
//  Created by Furkan Cingöz on 4.11.2023.
//

import SwiftUI

@Observable
class AppService {

  var posts = [Post]()
  var isDestinationViewPresented = false


  func fetchPost() async throws {
    guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts")
    else { return }
    let (data, _) = try await URLSession.shared.data(from: url)
    posts = try JSONDecoder().decode([Post].self, from: data)
  }
}
