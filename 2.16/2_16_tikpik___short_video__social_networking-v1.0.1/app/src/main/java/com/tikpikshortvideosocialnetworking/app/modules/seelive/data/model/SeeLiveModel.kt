package com.tikpikshortvideosocialnetworking.app.modules.seelive.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class SeeLiveModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSarahWilona: String? = MyApp.getInstance().resources.getString(R.string.lbl_sarah_wilona)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDancerSinger: String? = MyApp.getInstance().resources.getString(R.string.lbl_dancer_singer)

)
