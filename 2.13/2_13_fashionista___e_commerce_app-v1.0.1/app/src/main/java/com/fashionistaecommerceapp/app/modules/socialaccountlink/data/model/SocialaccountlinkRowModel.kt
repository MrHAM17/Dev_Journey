package com.fashionistaecommerceapp.app.modules.socialaccountlink.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class SocialaccountlinkRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFacebook: String? = MyApp.getInstance().resources.getString(R.string.lbl_facebook)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWelcomeToFacebook: String? =
      MyApp.getInstance().resources.getString(R.string.msg_welcome_to_facebook)

)
