package com.tikpikshortvideosocialnetworking.app.modules.switchaccount.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class SwitchAccountModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSwitchAccount: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_switch_account)

)
