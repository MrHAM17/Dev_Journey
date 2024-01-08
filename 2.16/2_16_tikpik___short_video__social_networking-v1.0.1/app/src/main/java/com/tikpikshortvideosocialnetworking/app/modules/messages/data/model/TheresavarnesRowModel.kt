package com.tikpikshortvideosocialnetworking.app.modules.messages.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class TheresavarnesRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtName: String? = MyApp.getInstance().resources.getString(R.string.lbl_theresa_varnes)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMessage: String? = MyApp.getInstance().resources.getString(R.string.msg_hi_morning_too)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAutoLayoutHorizontal: String? = MyApp.getInstance().resources.getString(R.string.lbl_1)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTwoThousand: String? = MyApp.getInstance().resources.getString(R.string.lbl_10_00)

)
