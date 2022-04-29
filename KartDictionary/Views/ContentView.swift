//
//  ContentView.swift
//  KartDictionary
//
//  Created by HWANG-C-K on 2022/04/29.
//

import SwiftUI

struct ContentView: View {
    enum Tabs:String {
        case league = "리그"
        case track = "트랙"
        case kart = "카트바디"
        case team = "선수/팀"
        case record = "기록실"
    }
    @State var tabSelection:Tabs = .league
    @State var elementSearch:String = ""
    var body: some View {
        NavigationView {
            TabView(selection: $tabSelection) {
                LeagueMainView()
                    .tabItem {
                        if tabSelection == Tabs.league {
                            Image(systemName: "flag")
                        }
                        else {
                            Image(systemName: "flag")
                                .environment(\.symbolVariants, .none)
                        }
                        Text("\(Tabs.league.rawValue)")
                    }.tag(Tabs.league)
                
                TrackMainView()
                    .tabItem {
                        if tabSelection == Tabs.track {
                            Image(systemName: "map")
                        }
                        else {
                            Image(systemName: "map")
                                .environment(\.symbolVariants, .none)
                        }
                        Text("\(Tabs.track.rawValue)")
                    }.tag(Tabs.track)
                
                KartMainView()
                    .tabItem {
                        if tabSelection == Tabs.kart {
                            Image(systemName: "car")
                        }
                        else {
                            Image(systemName: "car")
                                .environment(\.symbolVariants, .none)
                        }
                        Text("\(Tabs.kart.rawValue)")
                    }.tag(Tabs.kart)
                
                PlayerMainView()
                    .tabItem {
                        if tabSelection == Tabs.team {
                            Image(systemName: "person.3")
                        }
                        else {
                            Image(systemName: "person.3")
                                .environment(\.symbolVariants, .none)
                        }
                        Text("\(Tabs.team.rawValue)")
                    }.tag(Tabs.team)
                
                RecordMainView()
                    .tabItem {
                        if tabSelection == Tabs.record {
                            Image(systemName: "doc.text")
                        }
                        else {
                            Image(systemName: "doc.text")
                                .environment(\.symbolVariants, .none)
                        }
                        Text("\(Tabs.record.rawValue)")
                    }.tag(Tabs.record)
            }.accentColor(.purple)
                .navigationTitle(self.tabSelection.rawValue)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
