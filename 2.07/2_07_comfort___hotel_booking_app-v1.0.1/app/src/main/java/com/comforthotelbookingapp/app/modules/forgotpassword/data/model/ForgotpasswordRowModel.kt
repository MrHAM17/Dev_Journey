package com.comforthotelbookingapp.app.modules.forgotpassword.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class ForgotpasswordRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtViaSMS: String? = MyApp.getInstance().resources.getString(R.string.lbl_via_sms)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOneHundredElevenThousandOneHun: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_1_111_99)

)
