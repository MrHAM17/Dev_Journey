package com.fashionistaecommerceapp.app.modules.verificationcode.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class VerificationCodeModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLetSSignIn: String? =
      MyApp.getInstance().resources.getString(R.string.msg_verification_code)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEnterTheCodeWe: String? =
      MyApp.getInstance().resources.getString(R.string.msg_enter_the_code_we)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDidTReceiveA: String? =
      MyApp.getInstance().resources.getString(R.string.msg_did_t_receive_a)

)
