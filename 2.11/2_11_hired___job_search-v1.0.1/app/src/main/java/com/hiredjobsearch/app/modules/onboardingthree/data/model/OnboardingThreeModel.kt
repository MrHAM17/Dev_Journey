package com.hiredjobsearch.app.modules.onboardingthree.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class OnboardingThreeModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtApplicationSurely: String? =
      MyApp.getInstance().resources.getString(R.string.msg_application_surely)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSemperInCursus: String? =
      MyApp.getInstance().resources.getString(R.string.msg_semper_in_cursus)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTheBestAppFor: String? =
      MyApp.getInstance().resources.getString(R.string.msg_the_best_app_for)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSemperInCursus1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_semper_in_cursus)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBetterFutureIs: String? =
      MyApp.getInstance().resources.getString(R.string.msg_better_future_is)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSemperInCursus2: String? =
      MyApp.getInstance().resources.getString(R.string.msg_semper_in_cursus)

)
