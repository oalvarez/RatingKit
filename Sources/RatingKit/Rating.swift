//
//  Rating.swift
//  iDine
//
//  Created by Oscar Alvarez Hidalgo on 1/28/20.
//  Copyright © 2020 Oscar Alvarez Hidalgo. All rights reserved.
//

import SwiftUI

public struct Rating: View {
  var height: CGFloat = 20
  var weight: Font.Weight = .light
  var ratio: CGFloat = 1
  var value: CGFloat
  var max: Int = 5
  var symbol: String = "star"
  var foregroundColor: Color = .yellow
  var backgroundColor: Color = Color(UIColor.systemGray4)
  var spacing: CGFloat = 5
  
  public var body: some View {
    HStack(spacing: spacing) {
      ForEach(1...max, id: \.self) { number in
        return Symbol(height: self.height,
                      weight: self.weight,
                      ratio: self.ratio,
                      value: self.starValue(from: number),
                      symbol: self.symbol,
                      foregroundColor: self.foregroundColor,
                      backgroundColor: self.backgroundColor)
      }
    }
  }
  
  func starValue(from number: Int) -> CGFloat {
    clamping(self.value - CGFloat(number) + 1, in: 0...1)
  }
  
  public init(height: CGFloat = 20,
              weight: Font.Weight = .light,
              ratio: CGFloat = 1,
              value: CGFloat,
              max: Int = 5,
              symbol: String = "star",
              foregroundColor: Color = .yellow,
              backgroundColor: Color = Color(UIColor.systemGray4),
              spacing: CGFloat = 5) {
    self.value = value
    self.height = height
    self.weight = weight
    self.ratio = ratio
    self.max = max
    self.symbol = symbol
    self.foregroundColor = foregroundColor
    self.backgroundColor = backgroundColor
    self.spacing = spacing
  }
}

struct Rating_Previews: PreviewProvider {
  static var previews: some View {
    Rating(height: 20, value: 2.2, max: 5)
  }
}
