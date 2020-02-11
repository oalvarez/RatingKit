//
//  Symbol.swift
//
//  Created by Oscar Alvarez Hidalgo on 1/28/20.
//  Copyright © 2020 Oscar Alvarez Hidalgo. All rights reserved.
//

import SwiftUI

struct Symbol: View {
  
  var height: CGFloat
  var weight: Font.Weight = .light
  var ratio: CGFloat = 1
  var value: CGFloat
  var symbol: String
  var side: CGFloat { height - 0.1*height*ratio }
  var foregroundColor: Color = .yellow
  var backgroundColor: Color = Color(UIColor.systemGray4)
  
  var body: some View {
    ZStack {
    Image(systemName: symbol)
      .frame(width: height, height: height)
      .foregroundColor(backgroundColor)//(UIColor.systemGray4.color)
      .mask(Rectangle().padding(.leading, height * value))
    Image(systemName: "\(symbol).fill")
      .foregroundColor(foregroundColor)
      .frame(width: height, height: height)
      .mask(Rectangle().padding(.trailing, height * (1 - value)))
    }
    .font(Font.system(size: side, weight: weight))
    
  }
}

struct Star_Previews: PreviewProvider {
    static var previews: some View {
      Symbol(height: 50, value: 0.6, symbol: "star")
    }
}
