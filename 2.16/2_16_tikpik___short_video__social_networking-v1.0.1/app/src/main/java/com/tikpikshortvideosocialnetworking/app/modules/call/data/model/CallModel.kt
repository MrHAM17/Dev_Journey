package com.tikpikshortvideosocialnetworking.app.modules.call.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class CallModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTheresaVarnes: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_theresa_varnes)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDuration: String? = MyApp.getInstance().resources.getString(R.string.lbl_07_39_minutes)

)
