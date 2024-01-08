package com.tikpikshortvideosocialnetworking.app.modules.weeklyranking.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class WeeklyrankingRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTynishaObey: String? = MyApp.getInstance().resources.getString(R.string.lbl_tynisha_obey)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDistance: String? = MyApp.getInstance().resources.getString(R.string.lbl_26_37m)

)
