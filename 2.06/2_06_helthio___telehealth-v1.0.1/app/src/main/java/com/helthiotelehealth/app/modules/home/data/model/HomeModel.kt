package com.helthiotelehealth.app.modules.home.`data`.model

import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.di.MyApp
import kotlin.String

data class HomeModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFindYourDesire: String? =
      MyApp.getInstance().resources.getString(R.string.msg_find_your_desire)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEarlyProtection: String? =
      MyApp.getInstance().resources.getString(R.string.msg_early_protection)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTopDoctor: String? = MyApp.getInstance().resources.getString(R.string.lbl_top_doctor)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeAll: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_all)

)
