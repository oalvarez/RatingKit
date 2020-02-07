//
//  File.swift
//  
//
//  Created by Oscar Alvarez Hidalgo on 2/6/20.
//

import Foundation

func clamping<Value: Comparable>(_ value: Value, in range: ClosedRange<Value>) -> Value {
  if value < range.lowerBound { return range.lowerBound }
  if value > range.upperBound { return range.upperBound }
  return value
}
