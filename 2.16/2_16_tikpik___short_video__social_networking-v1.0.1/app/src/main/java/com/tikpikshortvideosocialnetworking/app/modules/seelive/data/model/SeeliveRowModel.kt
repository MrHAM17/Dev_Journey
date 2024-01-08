package com.tikpikshortvideosocialnetworking.app.modules.seelive.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class SeeliveRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtDarylNehls: String? = MyApp.getInstance().resources.getString(R.string.lbl_daryl_nehls)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWoohoooo: String? = MyApp.getInstance().resources.getString(R.string.lbl_woohoooo)

)
