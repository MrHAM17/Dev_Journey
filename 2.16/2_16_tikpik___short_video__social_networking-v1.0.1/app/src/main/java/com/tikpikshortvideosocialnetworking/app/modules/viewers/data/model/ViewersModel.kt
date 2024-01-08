package com.tikpikshortvideosocialnetworking.app.modules.viewers.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class ViewersModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtKViewers: String? = MyApp.getInstance().resources.getString(R.string.lbl_3_6k_viewers)

)
