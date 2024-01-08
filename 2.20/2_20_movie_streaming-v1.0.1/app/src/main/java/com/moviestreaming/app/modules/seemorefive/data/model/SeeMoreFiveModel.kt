package com.moviestreaming.app.modules.seemorefive.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class SeeMoreFiveModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNons: String? = MyApp.getInstance().resources.getString(R.string.lbl_action)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtThriller: String? = MyApp.getInstance().resources.getString(R.string.lbl_thriller)

)
