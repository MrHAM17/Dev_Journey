package com.shopsieecommerceapp.app.modules.profileprofileinfotabcontainer.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class ProfileProfileInfoTabContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtShopsie: String? = MyApp.getInstance().resources.getString(R.string.lbl_shopsie)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtProfileName: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_archie_copeland)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLocation: String? =
      MyApp.getInstance().resources.getString(R.string.msg_allentown_new_mexico)

)
