package com.housitbuyrentsellproperty.app.modules.addreviewfill.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class AddReviewFillModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPageTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_add_review)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle: String? = MyApp.getInstance().resources.getString(R.string.msg_hi_how_was_your)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lorem_ipsum_dolor6)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtForty: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_0)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etFormTextareaValue: String? = null
)
