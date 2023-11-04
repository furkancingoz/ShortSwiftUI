//
//  DestinationView.swift
//  ShortSwiftUI
//
//  Created by Furkan Cingöz on 4.11.2023.
//

import SwiftUI

struct DestinationView: View {

  @Environment(\.dismiss) private var dismiss
  var body: some View {
    VStack{
      Text("Hello, DestinationView!")
      Button("Dissmis") {
        dismiss()
      }
    }
  }
}
#Preview {
    DestinationView()
}
