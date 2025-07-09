//
//  ContentView.swift
//  SwiftPizza
//
//  Created by Pyotr Bodlev on 09.07.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text("Welcome to").font(.largeTitle).bold().foregroundColor(
                        Color(UIColor.systemBlue)
                    )
                    Spacer()
                }
                HStack {
                    Text("Swift Pizza").font(.largeTitle).bold().opacity(0.5)
                        .foregroundColor(Color(UIColor.systemBlue))
                    Spacer()
                }
            }.padding(.top, 50).padding(.leading, 10)
            Spacer()

            VStack(alignment: .leading) {
                HStack(alignment: .center) {
                    Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                        .foregroundColor(Color(UIColor.systemBlue)).scaleEffect(
                            1.5
                        ).frame(width: 50, height: 50).opacity(0.7)

                    VStack(alignment: .leading) {
                        HStack {
                            Text("Order everything").bold()
                        }
                        HStack {
                            Text("Our whole menu is available in the app.")
                                .font(.caption)
                        }

                    }
                }
                HStack(alignment: .center) {
                    Image(systemName: "gift.fill").foregroundColor(
                        Color(UIColor.systemBlue)
                    ).scaleEffect(1.9).frame(width: 50, height: 50).opacity(0.7)
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Buy Giftcards").bold()
                        }
                        HStack {
                            Text("Buy a gift card, check balance and more.")
                                .font(.caption)
                        }

                    }
                }
                HStack(alignment: .center) {
                    Image(systemName: "fork.knife").foregroundColor(
                        Color(UIColor.systemBlue)
                    ).scaleEffect(1.9).frame(width: 50, height: 50).opacity(0.7)
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Customize Pizzas").bold()
                        }
                        HStack {
                            Text(
                                "Pick and choose ingredients to make your dream pizza."
                            ).font(.caption)
                        }

                    }
                }
            }
            Spacer()
            HStack {
                Button(action: {
                    
                }) {
                    Text("Welcome").foregroundColor(Color.white)
                }.frame(width: 350, height: 60).background(
                    Color(UIColor.systemBlue).opacity(0.8)
                ).cornerRadius(15)
               
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
