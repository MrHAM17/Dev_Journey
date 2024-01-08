package com.tikpikshortvideosocialnetworking.app.modules.allactivity.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class FollowbackRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCharoletteHanlin: String? =
      MyApp.getInstance().resources.getString(R.string.msg_charolette_hanlin)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtInformation: String? =
      MyApp.getInstance().resources.getString(R.string.msg_leave_a_comment)

)
