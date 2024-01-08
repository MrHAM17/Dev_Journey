package com.fashionistaecommerceapp.app.modules.splashscreen.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class SplashScreenModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFashionista: String? = MyApp.getInstance().resources.getString(R.string.lbl_fashionista)

)
