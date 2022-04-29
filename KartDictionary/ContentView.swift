//
//  ContentView.swift
//  KartDictionary
//
//  Created by HWANG-C-K on 2022/04/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        enum Tabs: Text{
            case league = "리그"
            case track = "트랙"
            case kart = "카트바디"
            case team = "선수/팀"
            case record = "기록실"
        }
        
        @State var tabSelection:Tabs = .league
        
        NavigationView {
            TabView(selection:$tabSelection) {
                Text("Tab Content 1").tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 1")/*@END_MENU_TOKEN@*/ }.tag(1)
                Text("Tab Content 2").tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/ }.tag(2)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
