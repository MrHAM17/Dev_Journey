package com.tikpikshortvideosocialnetworking.app.modules.viewers.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class ViewersRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtDarylNehls: String? = MyApp.getInstance().resources.getString(R.string.lbl_daryl_nehls)

)
