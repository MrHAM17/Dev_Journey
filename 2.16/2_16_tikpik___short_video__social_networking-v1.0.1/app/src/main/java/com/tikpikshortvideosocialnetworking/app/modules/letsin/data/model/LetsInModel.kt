package com.tikpikshortvideosocialnetworking.app.modules.letsin.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class LetsInModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLetSSignYouIn: String? =
      MyApp.getInstance().resources.getString(R.string.msg_let_s_sign_you_in)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOr: String? = MyApp.getInstance().resources.getString(R.string.lbl_or)
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
