package com.fashionistaecommerceapp.app.modules.onbordingtwo.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class OnbordingTwoModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSkip: String? = MyApp.getInstance().resources.getString(R.string.lbl_skip)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLatestStyle: String? = MyApp.getInstance().resources.getString(R.string.lbl_latest_style)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_the_latest_styles)

)
