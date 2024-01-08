package com.tikpikshortvideosocialnetworking.app.modules.suggested.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class SuggestedRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtRayfordChenail: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_rayford_chenail)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.msg_rayfordchenail)

)
