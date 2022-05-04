//
//  KartListRow.swift
//  KartDictionary
//
//  Created by HWANG-C-K on 2022/05/04.
//

import SwiftUI

extension Color{
    init(hex: String){
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >> 8) & 0xFF) / 255.0
        let b = Double((rgb >> 0) & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
    
}

struct KartListRow: View {
    var kart:Kart
    var body: some View {
        ZStack{
            RoundedRectangle(cornerSize: CGSize(width:10, height:10))
                .fill(Color(hex:kart.color))
                .opacity(0.1)
                .frame(width:110, height:110)
            RoundedRectangle(cornerSize: CGSize(width:10, height:10))
                .stroke(Color(hex:kart.color), lineWidth:3)
                .frame(width:110, height:110)
            Image(kart.imageName)
                .resizable()
                .frame(width:100, height:75)
        }
        
    }
}

struct KartListRow_Previews: PreviewProvider {
    static var previews: some View {
        KartListRow(kart: karts[0])
    }
}
