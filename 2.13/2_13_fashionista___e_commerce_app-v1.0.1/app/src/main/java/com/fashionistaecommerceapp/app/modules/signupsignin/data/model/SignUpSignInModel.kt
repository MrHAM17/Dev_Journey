package com.fashionistaecommerceapp.app.modules.signupsignin.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class SignUpSignInModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtDiscoveryourShoppingHere: String? =
      MyApp.getInstance().resources.getString(R.string.msg_discover_your_shopping)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_it_is_a_long_established)

)
