//
//  ContentView.swift
//  U4L3
//
//  Created by Dmitrii Nazarov on 06.11.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            VStack (spacing: 20){
                HStack{
                    Image(.img5)
                    Spacer()
                    Image(.img3)
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(.rect(cornerRadius: 25))
                }
                .padding(12)
                ScrollView(.horizontal){
                    HStack{
                        Image(.img1)
                        Image(.img1)
                        Image(.img1)
                        Image(.img1)
                    }
                }
                //.padding(12)
                HStack{
                    HStack {
                        CategoryButton(iconName: "popcorn.fill", title: "Фильмы") {
                            print("Фильмы нажаты")
                        }
                        CategoryButton(iconName: "tv.fill", title: "Сериалы") {
                            print("Сериалы нажаты")
                        }
                        CategoryButton(iconName: "film.fill", title: "Мультфильмы") {
                            print("Мультфильмы нажаты")
                        }
                    }
                }
                .padding(.leading, 12)
                .padding(.trailing, 12)
                //.padding(.bottom, 12)
                //.padding(12)
                
                HStack{
                    Text("Продолжить просмотр")
                        .foregroundStyle(.white)
                        .font(.system(size: 26))
                    Spacer()
                }
                .padding(12)
                
                ScrollView(.horizontal){
                    HStack{
                        Image(.img4)
                        Image(.img2)
                        Image(.img4)
                        Image(.img2)
                    }
                }
                
                
                HStack{
                    Text("Фильмы для вас")
                        .foregroundStyle(.white)
                        .font(.system(size: 26))
                    Spacer()
                }
                //.padding(12)
                .padding(.leading, 12)
                .padding(.trailing, 12)
                .padding(.bottom, 10)
                ScrollView(.horizontal){
                    HStack{
                        Image(.img8)
                        Image(.img7)
                        Image(.img8)
                        Image(.img7)
                    }
                }
                
            }
        }
       // .padding()
        .background(Color.black)
    }
    
}

#Preview {
    ContentView()
}

struct Categories: View {
    let iconName: String
    let title: String
    
    var body: some View {
        HStack{
            Image(systemName: iconName)
                .font(.system(size: 12))
                .foregroundColor(.white)
            Text(title)
                .font(.system(size: 12))
                .foregroundColor(.white)
        }
        //.padding(12)
        .background(Color(UIColor.darkGray))
        .cornerRadius(10)
        
        
    }
    
}

struct CategoryButton: View {
    let iconName: String
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Image(systemName: iconName)
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                
                Text(title)
                    .font(.system(size: 12))
                    .foregroundColor(.white)
            }
            .padding(.leading, 15)
            .padding(.trailing, 15)
            .padding(.bottom, 10)
            .padding(.top, 10)
            //.frame(height: 40) // Высота кнопки
            .background(Color(UIColor.darkGray))
            .cornerRadius(7)
        }
    }
}
