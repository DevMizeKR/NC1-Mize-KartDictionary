//
//  Kart.swift
//  KartDictionary
//
//  Created by HWANG-C-K on 2022/05/04.
//

import SwiftUI
import Foundation

struct Kart: Identifiable, Decodable {
    var id: Int
    var type: String
    var name: String
    var mode: String
    var color: String
    var imageName: String
    var image: Image{
        Image(imageName)
    }
}
