package com.tikpikshortvideosocialnetworking.app.modules.allactivity.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class Followback1RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtClintonMcclure: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_clinton_mcclure)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtStartedfollowingyou: String? =
      MyApp.getInstance().resources.getString(R.string.msg_started_following)

)
