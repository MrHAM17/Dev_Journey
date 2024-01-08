package com.helthiotelehealth.app.modules.finddoctors.`data`.model

import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.di.MyApp
import kotlin.String

data class FindDoctorsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLogin: String? = MyApp.getInstance().resources.getString(R.string.lbl_find_doctors)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCategory: String? = MyApp.getInstance().resources.getString(R.string.lbl_category)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRecommendedDoctors: String? =
      MyApp.getInstance().resources.getString(R.string.msg_recommended_doctors)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDrMarcusHorizon: String? =
      MyApp.getInstance().resources.getString(R.string.msg_dr_marcus_horizon)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtChardiologist: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_chardiologist)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFortySeven: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_7)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDistance: String? = MyApp.getInstance().resources.getString(R.string.lbl_800m_away)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtYourRecentDoctors: String? =
      MyApp.getInstance().resources.getString(R.string.msg_your_recent_doctors)

)
