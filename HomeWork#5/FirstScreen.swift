//
//  FirstScreen.swift
//  HomeWork#5
//
//  Created by Bibigul Aubakirova on 04.05.2022.
//

import SwiftUI

struct firstScreen: View {
    
    init() {
                let tabBarAppeareance = UITabBarAppearance()
                tabBarAppeareance.backgroundColor = .white
                UITabBar.appearance().standardAppearance = tabBarAppeareance
            }
    
    var body: some View {
        TabViewScreen
    }

    var TabViewScreen: some View {
        TabView {
            BackgroundImage
                            .tabItem {
                                Text("Main")
                                Image(systemName: "house.circle.fill")
                                Text("Main")
                            }.tag(1)
            
            BackgroundImage
                            .tabItem {
                                Image(systemName: "slider.horizontal.3")
                                Text("Settings")
                            }.tag(2)
            
            BackgroundImage
                            .tabItem{
                                Image(systemName: "doc.fill")
                                Text("History")
                            }.tag(3)
                    
        }
//        .accentColor(.blue)
    }
    
    var BackgroundImage: some View {
        ZStack {
            Image("andre-benz-sLokLIacItI-unsplash")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            VStack(spacing:50) {
                Text("")
                    .foregroundColor(.white)
                ZStack{
                    RoundedRectangle(cornerRadius: 24)
                        .fill(Color.white)
                        .frame(width: 170, height: 36)
                        .opacity(0.50)
                        .blur(radius: 0.1)
                    HStack(spacing: 10){
                        Image(systemName: "pencil")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .semibold))
                        Text("Focus Category")
                            .foregroundColor(.white)
                            .frame(width: 120, height: 24, alignment: .leading)
                            .font(.system(size: 16, weight: .semibold))
                        
                    }
                    }
                        ZStack {
                Circle()
                    .stroke(lineWidth: 10)
                    .opacity(0.3)
                    .foregroundColor(.white)
                    .frame(width: 248, height: 248)
                            VStack{
                    Text("25:00")
                    Text("Focus on your task")
                }
                }
                    Spacer()
                
        }
        
    }
    
}
}

    
//struct ProgressBar: View {
//   @Binding var progress: Float
//    var body: some View{
//       ZStack{
//        Circle()
//            .stroke(lineWidth: 10)
//            .opacity(0.3)
//            .foregroundColor(.white)
//            .frame(width: 248, height: 248)
//    }
//    }




struct firstScreenViews_Previews: PreviewProvider{
    static var previews: some View {
        firstScreen()
    }
}


