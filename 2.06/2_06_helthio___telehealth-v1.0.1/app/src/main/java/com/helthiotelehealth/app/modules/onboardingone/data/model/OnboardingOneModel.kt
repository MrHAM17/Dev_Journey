package com.helthiotelehealth.app.modules.onboardingone.`data`.model

import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.di.MyApp
import kotlin.String

data class OnboardingOneModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtHeadline: String? = MyApp.getInstance().resources.getString(R.string.msg_consult_only_with)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSkip: String? = MyApp.getInstance().resources.getString(R.string.lbl_skip)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHeadline1: String? = MyApp.getInstance().resources.getString(R.string.msg_get_connect_our)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHeadline2: String? =
      MyApp.getInstance().resources.getString(R.string.msg_find_a_lot_of_specialist)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSkip1: String? = MyApp.getInstance().resources.getString(R.string.lbl_skip)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHelthio: String? = MyApp.getInstance().resources.getString(R.string.lbl_helthio)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHeadline3: String? =
      MyApp.getInstance().resources.getString(R.string.msg_let_s_get_started)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLoginToEnjoyThe: String? =
      MyApp.getInstance().resources.getString(R.string.msg_login_to_enjoy_the)

)
