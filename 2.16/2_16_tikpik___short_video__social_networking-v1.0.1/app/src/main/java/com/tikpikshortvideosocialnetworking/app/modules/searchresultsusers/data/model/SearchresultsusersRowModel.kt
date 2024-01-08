package com.tikpikshortvideosocialnetworking.app.modules.searchresultsusers.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class SearchresultsusersRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtDarcelBallentine: String? =
      MyApp.getInstance().resources.getString(R.string.msg_darcel_ballentine)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.msg_darcelballentine2)

)
