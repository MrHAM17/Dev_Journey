package com.vertexrealestateapp.app.modules.selectappalarm.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class SelectAppAlarmModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNotification: String? =
      MyApp.getInstance().resources.getString(R.string.msg_review_your_tour)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMightyCincoFamily: String? =
      MyApp.getInstance().resources.getString(R.string.msg_mighty_cinco_family)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJakartaIndonesia: String? =
      MyApp.getInstance().resources.getString(R.string.msg_jakarta_indonesia)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTittle: String? = MyApp.getInstance().resources.getString(R.string.lbl_date)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMonth: String? = MyApp.getInstance().resources.getString(R.string.lbl_mon_april_4)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTittle1: String? = MyApp.getInstance().resources.getString(R.string.lbl_time)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_00_4_45_pm)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtYourIdentityIs: String? =
      MyApp.getInstance().resources.getString(R.string.msg_your_identity_is)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtVerifyYourIdentity: String? =
      MyApp.getInstance().resources.getString(R.string.msg_verify_your_identity)

)
