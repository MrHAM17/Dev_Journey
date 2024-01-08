package com.ecommerce.app.modules.writereviewfill.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class WriteReviewFillModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWriteReview: String? = MyApp.getInstance().resources.getString(R.string.lbl_write_review)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPleaseWriteOverall: String? =
      MyApp.getInstance().resources.getString(R.string.msg_please_write_overall)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWriteYourReview: String? =
      MyApp.getInstance().resources.getString(R.string.msg_write_your_review)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etAddReviewValue: String? = null
)
