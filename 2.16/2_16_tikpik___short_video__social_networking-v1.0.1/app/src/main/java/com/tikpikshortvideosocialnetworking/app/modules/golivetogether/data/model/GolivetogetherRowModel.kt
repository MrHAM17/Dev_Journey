package com.tikpikshortvideosocialnetworking.app.modules.golivetogether.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class GolivetogetherRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtChantalShelburne: String? =
      MyApp.getInstance().resources.getString(R.string.msg_chantal_shelburne)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_9_min_ago)

)
