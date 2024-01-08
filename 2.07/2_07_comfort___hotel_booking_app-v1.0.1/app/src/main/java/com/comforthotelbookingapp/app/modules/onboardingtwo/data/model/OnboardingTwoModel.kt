package com.comforthotelbookingapp.app.modules.onboardingtwo.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class OnboardingTwoModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFindTheBestHotels: String? =
      MyApp.getInstance().resources.getString(R.string.msg_find_the_best_hotels)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lorem_ipsum_dolor)

)
