package com.tikpikshortvideosocialnetworking.app.modules.risingstars.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class RisingstarsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtRochelFoose: String? = MyApp.getInstance().resources.getString(R.string.lbl_rochel_foose)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDistance: String? = MyApp.getInstance().resources.getString(R.string.lbl_55_65m)

)
