//
//  ShortSwiftUIApp.swift
//  ShortSwiftUI
//
//  Created by Furkan Cingöz on 4.11.2023.
//

import SwiftUI

@main
struct ShortSwiftUIApp: App {

@State private var appService = AppService()


  var body: some Scene {
    WindowGroup {
      NavigationStack{
        ContentView()
      }
      .environment(appService)
    }
  }
}
