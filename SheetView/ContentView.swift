//
//  ContentView.swift
//  SheetView
//
//  Created by Ayaz on 24.07.2024.
//

import SwiftUI

struct SheetView: View {
    @State private var showWarriorSheet = false
    @State private var showAssassinSheet = false
    @State private var showSuraSheet = false
    @State private var showShamanSheet = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Image("image1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 300)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.black, lineWidth: 4))
                        .shadow(radius: 10)
                    Button {
                        self.showWarriorSheet = true
                    } label: {
                        HStack {
                            Image("Warrior")
                                .resizable()
                                .frame(width: 50,height: 50)
                                .clipShape(Circle())
                            Text("Savaşçı")
                                .padding()
                                .foregroundColor(.white)
                        }
                    }.padding()
                    .background(Color.black)
                    .clipShape(Capsule())
                    
                    .sheet(isPresented: $showWarriorSheet) {
                        ZStack {
                            Color.black.opacity(0.5).ignoresSafeArea()
                            VStack{
                                CharacterDetailView(characterName:"", characterDescription:"Savaşçı")
                                Image("Warrior")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 300, height: 300)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.black, lineWidth: 6))
                                    .shadow(radius: 10)
                                Text("Savaşçı genelde farm karakteri olarak bilinir. Bedensel ve Zihinsel olarak iki farklı büyü yeteğine sahip olan bu karakter kırılgan olsalar bile damage oranları yüksek olmaları duelo sırasında fazla hasar vermeleri sağlar.")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .padding()
                            }
                        }
                            
                    }
                    Button {
                        self.showAssassinSheet = true
                    } label: {
                        HStack{
                            Image("Assassin")
                                .resizable()
                                .frame(width: 70,height: 50)
                                .clipShape(Circle())
                            Text("Ninja")
                                .padding()
                                .background(Color.black)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        
                        
                    }.padding()
                        .background(Color.black)
                        .clipShape(Capsule())
                    
                    .sheet(isPresented: $showAssassinSheet) {
                        ZStack{
                            Color.black.opacity(0.5).ignoresSafeArea()
                            VStack{
                                CharacterDetailView(characterName:"", characterDescription:"Ninja")
                                Image("Assassin")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 300, height: 300)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                    .overlay(Circle().stroke(Color.black, lineWidth: 6))
                                    .shadow(radius: 10)
                                Text("Tam bir suikatçı olarak bilinen ninja attığı kombolar ile tanınır ve bileği olanların tercihidir. Yakın Dövüş ve Uzak dövüş olmak üzere iki farklı yeteneğe sahiptir.")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .padding()
                            }
                        }
                        
                    }
                    Button {
                        self.showSuraSheet = true
                    } label: {
                        HStack{
                            Image("Sura")
                                .resizable()
                                .frame(width: 70,height: 50)
                                .clipShape(Circle())
                            Text("Sura")
                                .padding()
                                .background(Color.black)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        
                    }.padding()
                        .background(Color.black)
                        .clipShape(Capsule())
                    
                        .sheet(isPresented: $showSuraSheet) {
                            ZStack{
                                Color.black.opacity(0.5).ignoresSafeArea()
                                VStack{
                                    CharacterDetailView(characterName:"", characterDescription:"Sura")
                                    Image("Sura")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 300, height: 300)
                                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                        .overlay(Circle().stroke(Color.black, lineWidth: 6))
                                        .shadow(radius: 10)
                                    
                                    
                                    Text("Sura oyundaki en güçlü karakterlerden birisidir. Savunması çok fazla olan bu karakter Lonca savaşlarında çok tercih edilir. Karabüyü ve Büyülü Silah olarak iki farklı yeteneğe sahiptir.")
                                        .fontWeight(.bold)
                                        .font(.headline)
                                        .padding()
                                        .fontDesign(.rounded)
                                }
                            }
                        
                    }
                    Button {
                        self.showShamanSheet = true
                    } label: {
                        HStack{
                            Image("Shaman")
                                .resizable()
                                .frame(width: 50,height: 50)
                                .clipShape(Circle())
                            Text("Şaman")
                                .padding()
                                .background(Color.black)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        
                        
                    }.padding()
                        .background(Color.black)
                        .clipShape(Capsule())
                    
                    .sheet(isPresented: $showShamanSheet) {
                        ZStack{
                            Color.black.opacity(0.5).ignoresSafeArea()
                            VStack{
                                CharacterDetailView(characterName:"", characterDescription:"Şaman")
                                Image("Shaman")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 300, height: 300)
                                    .clipShape(Capsule())
                                    .overlay(Circle().stroke(Color.black, lineWidth: 6))
                                    .shadow(radius: 10)
                                Text("Şaman Lonca savaşlarının en gözde karakteri olarak bilinir ve alan hasarları ile öne çıkmaktadır. İyileştirmeci ve Ejderha Gücü olarak iki farklı yeteğe sahiptir.")
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .padding()
                            }
                        }
                        
                    }
                    
                } .navigationTitle("Metin2 Karakterleri")
                    .frame(maxWidth:.infinity,maxHeight: .infinity)
                
            }.background(Color.black.opacity(0.6))
        }
    }
}

struct CharacterDetailView: View {
    var characterName: String
    var characterDescription: String
    var body: some View {
        VStack{
            Text(characterName)
                .font(.largeTitle)
                .padding()
        
            Text(characterDescription)
                .font(.largeTitle)
                .padding()
            
        }
    }
}

#Preview {
    SheetView()
}
