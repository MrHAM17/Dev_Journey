package com.housitbuyrentsellproperty.app.modules.allreviews.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class AllReviewsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtUserreviews: String? = MyApp.getInstance().resources.getString(R.string.lbl_user_reviews)

)
