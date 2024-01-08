package com.comforthotelbookingapp.app.modules.onboardingone.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class OnboardingOneModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTravelsafelycomfortablyeasily: String? =
      MyApp.getInstance().resources.getString(R.string.msg_travel_safely_comfortably)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lorem_ipsum_dolor)

)
