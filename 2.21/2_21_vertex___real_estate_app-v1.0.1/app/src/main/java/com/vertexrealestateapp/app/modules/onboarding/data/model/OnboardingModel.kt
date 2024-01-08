package com.vertexrealestateapp.app.modules.onboarding.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class OnboardingModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTittle: String? = MyApp.getInstance().resources.getString(R.string.msg_enjoy_the_beautiful)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBody: String? = MyApp.getInstance().resources.getString(R.string.msg_lorem_ipsum_is_simply)

)
