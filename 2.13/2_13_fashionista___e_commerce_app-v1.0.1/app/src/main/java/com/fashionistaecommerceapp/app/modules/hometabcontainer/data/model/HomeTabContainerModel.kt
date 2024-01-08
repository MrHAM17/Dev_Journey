package com.fashionistaecommerceapp.app.modules.hometabcontainer.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class HomeTabContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFindYourStyle: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_find_your_style)

)
