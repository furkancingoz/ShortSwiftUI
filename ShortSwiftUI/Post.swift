//
//  Profile.swift
//  ShortSwiftUI
//
//  Created by Furkan Cingöz on 4.11.2023.
//

import SwiftUI

struct Post : Codable, Identifiable, Hashable{
  let id : Int
  let userId : Int
  let title : String
  let body : String
}

