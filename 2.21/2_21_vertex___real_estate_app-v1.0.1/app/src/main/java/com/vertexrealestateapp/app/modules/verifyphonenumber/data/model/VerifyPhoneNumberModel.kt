package com.vertexrealestateapp.app.modules.verifyphonenumber.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class VerifyPhoneNumberModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTittle: String? = MyApp.getInstance().resources.getString(R.string.msg_verify_phone_number)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBody: String? = MyApp.getInstance().resources.getString(R.string.msg_we_send_a_code_to)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBody1: String? = MyApp.getInstance().resources.getString(R.string.lbl_resend_code)

)
