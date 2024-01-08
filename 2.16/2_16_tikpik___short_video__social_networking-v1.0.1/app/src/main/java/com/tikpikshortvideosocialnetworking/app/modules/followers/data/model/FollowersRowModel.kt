package com.tikpikshortvideosocialnetworking.app.modules.followers.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class FollowersRowModel(
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
