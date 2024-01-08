package com.tikpikshortvideosocialnetworking.app.modules.totallikes.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class TotalLikesModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtDistance: String? = MyApp.getInstance().resources.getString(R.string.lbl_27m_total_likes)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDistance1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_jenny_wilson_received)

)
