//
//  ContentView.swift
//  SwiftUI ViewsAndModifiers
//
//  Created by Piotr Kieliś on 18/07/2025.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}

struct CapsuleText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundStyle(.white)
            .background(.blue)
            .clipShape(.capsule)
    }
}

struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content)-> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding()
                .background(.black)
            
        }
    }
}

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { row in
                HStack {
                    ForEach(0..<columns, id: \.self) { column in
                        content(row, column)
                    }
                }
            }
        }
    }
}

extension View {
    func watermark(_ text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

struct ContentView: View {
    var body: some View {
        /*Text("Hello, World!")
            .frame(width: 300, height: 300)
            .modifier(Title())
            .titleStyle()
            .watermark(".swiftui") */
        GridStack(rows: 3, columns: 3) { row, column in
            HStack {
                Image(systemName: "\(row * 4 + column).circle")
                Text("R\(row),C\(column)")
            }
        }
        
    }
}

#Preview {
    ContentView()
}
