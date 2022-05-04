//
//  Track.swift
//  KartDictionary
//
//  Created by HWANG-C-K on 2022/05/02.
//

import SwiftUI
import Foundation

struct Track: Identifiable, Decodable {
    var id: Int
    var type: String
    var name: String
    var mode: String
    var imageName: String
    var image: Image{
        Image(imageName)
    }
}
