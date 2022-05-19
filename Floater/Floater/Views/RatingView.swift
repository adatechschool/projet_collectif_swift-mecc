//
//  RatingView.swift
//  Floater

//

import SwiftUI

struct RatingView: View {
  private static let MAX_RATING: Float = 5 // Defines upper limit of the rating
  private static let COLOR = Color.orange // The color of the stars

  let rating: Float
  private let fullCount: Int
  private let emptyCount: Int
  private let halfFullCount: Int

  init(rating: Float) {
    self.rating = rating
    fullCount = Int(rating)
    emptyCount = Int(RatingView.MAX_RATING - rating)
    halfFullCount = (Float(fullCount + emptyCount) < RatingView.MAX_RATING) ? 1 : 0
  }

  var body: some View {
    HStack {
        ForEach(0 ..< fullCount, id: \.self) { _ in
         self.fullStar
       }
       ForEach(0 ..< halfFullCount, id: \.self) { _ in
         self.halfFullStar
       }
       ForEach(0 ..< emptyCount, id: \.self) { _ in
         self.emptyStar
       }
     }
  }

  private var fullStar: some View {
    Image("etoile").foregroundColor(RatingView.COLOR)
  }

  private var halfFullStar: some View {
    Image("etoile.lefthalf.fill").foregroundColor(RatingView.COLOR)
  }

  private var emptyStar: some View {
    Image("etoile_vide").foregroundColor(RatingView.COLOR)
  }
}
