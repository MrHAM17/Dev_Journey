package com.jusplaymoviestreamingapp.app.modules.resetpasswordsuccess.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class ResetPasswordSuccessModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCongrats: String? = MyApp.getInstance().resources.getString(R.string.lbl_congrats)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCongratsyourpassword: String? =
      MyApp.getInstance().resources.getString(R.string.msg_congrats_your_password)

)
