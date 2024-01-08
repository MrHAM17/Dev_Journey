package com.safebankmobilebankingapp.app.modules.splash.`data`.model

import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.di.MyApp
import kotlin.String

data class SplashModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSAFEBANK: String? = MyApp.getInstance().resources.getString(R.string.lbl_safebank)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWeServeWithFaith: String? =
      MyApp.getInstance().resources.getString(R.string.msg_we_serve_with_faith)

)
