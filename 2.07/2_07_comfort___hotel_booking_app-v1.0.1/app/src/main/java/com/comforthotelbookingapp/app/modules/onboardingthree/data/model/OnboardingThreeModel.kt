package com.comforthotelbookingapp.app.modules.onboardingthree.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class OnboardingThreeModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLetSDiscoverThe: String? =
      MyApp.getInstance().resources.getString(R.string.msg_let_s_discover_the)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lorem_ipsum_dolor)

)
