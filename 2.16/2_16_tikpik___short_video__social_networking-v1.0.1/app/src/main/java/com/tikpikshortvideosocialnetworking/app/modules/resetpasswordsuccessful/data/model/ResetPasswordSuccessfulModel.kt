package com.tikpikshortvideosocialnetworking.app.modules.resetpasswordsuccessful.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class ResetPasswordSuccessfulModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtModalTitle: String? = MyApp.getInstance().resources.getString(R.string.msg_congratulations)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLoremIpsumDolor: String? =
      MyApp.getInstance().resources.getString(R.string.msg_your_account_is)

)
