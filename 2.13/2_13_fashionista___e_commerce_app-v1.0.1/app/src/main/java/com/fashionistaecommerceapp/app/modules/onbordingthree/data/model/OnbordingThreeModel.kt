package com.fashionistaecommerceapp.app.modules.onbordingthree.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class OnbordingThreeModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSkip: String? = MyApp.getInstance().resources.getString(R.string.lbl_skip)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAllForYou: String? = MyApp.getInstance().resources.getString(R.string.lbl_all_for_you)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_we_always_try_provide)

)
