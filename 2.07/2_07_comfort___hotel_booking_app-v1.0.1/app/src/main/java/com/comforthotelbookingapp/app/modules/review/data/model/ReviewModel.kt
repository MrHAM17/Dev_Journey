package com.comforthotelbookingapp.app.modules.review.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class ReviewModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtRating: String? = MyApp.getInstance().resources.getString(R.string.lbl_rating)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFortyEight: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_8)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtReviews: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_981_reviews)

)
