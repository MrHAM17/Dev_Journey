package com.helthiotelehealth.app.modules.resetpasswordverifycode.`data`.model

import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.di.MyApp
import kotlin.String

data class ResetPasswordVerifyCodeModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtEnterVerification: String? =
      MyApp.getInstance().resources.getString(R.string.msg_enter_verification)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEnterCodeThat: String? =
      MyApp.getInstance().resources.getString(R.string.msg_enter_code_that)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDidnTReceiveThe: String? =
      MyApp.getInstance().resources.getString(R.string.msg_didn_t_receive_the)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtResend: String? = MyApp.getInstance().resources.getString(R.string.lbl_resend)

)
