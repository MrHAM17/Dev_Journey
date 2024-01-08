package com.tikpikshortvideosocialnetworking.app.modules.logoutmodal.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class LogoutModalModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLogout: String? = MyApp.getInstance().resources.getString(R.string.lbl_logout)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtConfirmation: String? =
      MyApp.getInstance().resources.getString(R.string.msg_are_you_sure_you)

)
