package com.ecommerce.app.modules.reviewproduct.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class ReviewProductModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtReviewCounter: String? = MyApp.getInstance().resources.getString(R.string.lbl_5_review2)

)
