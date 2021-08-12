//
//  Tip.swift
//  Trekr
//
//  Created by Zeke Binion on 8/11/21.
//

import Foundation

struct Tip: Decodable {
  let text: String
  let children: [Tip]?
}
