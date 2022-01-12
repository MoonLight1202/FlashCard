//
//  ContentView.swift
//  test2
//
//  Created by MoonLight on 30/12/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.purple.ignoresSafeArea(.all)
            VStack {
                Image("tuyen3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 4)
                    )
                Text("Hello!")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .foregroundColor(.white)
                Text("I'm MoonLight")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Text("From 1/1/2022 I will stop working on Messenger")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                Text("Please contact ")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                Divider()
                ExtractedView(textlabel: "+84868387831", imageName: "phone.fill")
                ExtractedView(textlabel: "minhtuyen2001@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    let textlabel : String
    let imageName : String
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .frame(height: 50)
                .overlay(
                    HStack{
                        Image(systemName: imageName).foregroundColor(Color.green)
                        Text(textlabel)
                    }
                )
                .font(.system(size: 25))
        }
        .padding()
    }
}
