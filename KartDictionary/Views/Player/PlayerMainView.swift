//
//  PlayerMainView.swift
//  KartDictionary
//
//  Created by HWANG-C-K on 2022/04/29.
//

import SwiftUI

struct PlayerMainView: View {
    @State var playerType:String = "player"
    var body: some View {
        VStack{
            Picker(selection: $playerType, label: Text("Player List")) {
                Text("선수")
                    .tag("player")
                Text("팀")
                    .tag("team")
            }.pickerStyle(SegmentedPickerStyle())
                .padding()
            Spacer()
        }
    }
}

struct PlayerMainView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerMainView()
    }
}
