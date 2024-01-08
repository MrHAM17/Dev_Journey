package com.housitbuyrentsellproperty.app.modules.propertydetails.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class ViewallreviewsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtText1: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_9)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFrom: String? = MyApp.getInstance().resources.getString(R.string.lbl_from)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText2: String? = MyApp.getInstance().resources.getString(R.string.lbl_112)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtReviewers: String? = MyApp.getInstance().resources.getString(R.string.lbl_reviewers)

)
