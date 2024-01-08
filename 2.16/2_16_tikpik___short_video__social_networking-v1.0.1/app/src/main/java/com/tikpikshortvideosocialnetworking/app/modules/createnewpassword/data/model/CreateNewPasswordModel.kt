package com.tikpikshortvideosocialnetworking.app.modules.createnewpassword.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class CreateNewPasswordModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitleSection: String? =
      MyApp.getInstance().resources.getString(R.string.msg_create_new_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCreateYourNew: String? =
      MyApp.getInstance().resources.getString(R.string.msg_create_your_new)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etNewpasswordValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etNewpassword1Value: String? = null
)
