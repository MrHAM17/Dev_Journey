package com.comforthotelbookingapp.app.modules.letsyouin.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class LetSYouInModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLetSYouIn: String? = MyApp.getInstance().resources.getString(R.string.lbl_let_s_you_in)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtConfirmation: String? =
      MyApp.getInstance().resources.getString(R.string.msg_don_t_have_an_account)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSignUp: String? = MyApp.getInstance().resources.getString(R.string.lbl_sign_up)

)
