package com.housitbuyrentsellproperty.app.modules.reviews.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class Layout8RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtKurtMullins: String? = MyApp.getInstance().resources.getString(R.string.lbl_kurt_mullins)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lorem_ipsum_dolor5)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_10_mins_ago)

)
