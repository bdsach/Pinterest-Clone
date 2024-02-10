//
//  ContentView.swift
//  PinterestClone
//
//  Created by Bandit Silachai on 10/2/24.
//

import SwiftUI
import PagerTabStripView

struct TitleNavBarItem: View {
    let title: String
    let isActive: Bool

    var body: some View {
        VStack {
            Text(title)
                .foregroundColor(isActive ? .black:.black.opacity(0.6))
                .fontWeight(.medium)
                .animation(.easeIn, value: isActive)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}

struct ContentView: View {
    @State var selection = 1
    
    var body: some View {
        TabView {
            PagerTabStripView(edgeSwipeGestureDisabled: .constant([.left]),
                              selection: $selection) {
                AllView()
                    .pagerTabItem(tag: 1) {
                        TitleNavBarItem(title: "All", isActive: selection == 1)
                    }
                MySecondView()
                    .pagerTabItem(tag: 2) {
                        TitleNavBarItem(title: "Mobile", isActive: selection == 2)
                    }
                MySecondView()
                    .pagerTabItem(tag: 3) {
                        TitleNavBarItem(title: "Web Design", isActive: selection == 3)
                    }
                MySecondView()
                    .pagerTabItem(tag: 4) {
                        TitleNavBarItem(title: "Swift", isActive: selection == 4)
                    }
                MySecondView()
                    .pagerTabItem(tag: 5) {
                        TitleNavBarItem(title: "Nature", isActive: selection == 4)
                    }
                MySecondView()
                    .pagerTabItem(tag: 6) {
                        TitleNavBarItem(title: "Travel", isActive: selection == 4)
                    }
                MySecondView()
                    .pagerTabItem(tag: 7) {
                        TitleNavBarItem(title: "Fruits", isActive: selection == 4)
                    }
            }
            .pagerTabStripViewStyle(.scrollableBarButton(tabItemSpacing: 20,
                                                         tabItemHeight: 80,
                                                         indicatorView: {
                Rectangle()
                    .fill(.black)
                    .frame(height: 5)
                    .cornerRadius(5)
                    .padding(.bottom, 40)
            }))
            .tabItem {
                Image(systemName: "house")
            }
            Text("Search")
                .tag(1)
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            Text("Profile")
                .tag(1)
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                }
        }
        .accentColor(.black)
    }
}

#Preview {
    ContentView()
}
