package com.socialsocialnetworking.app.modules.stories.`data`.model

import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class FrameRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLIVEWeTheFest: String? =
      MyApp.getInstance().resources.getString(R.string.msg_live_we_the_fest)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.msg_19_00_forg_stadium)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBlueLoyalParty: String? =
      MyApp.getInstance().resources.getString(R.string.msg_blue_loyal_party)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice2: String? = MyApp.getInstance().resources.getString(R.string.msg_19_35_latuna)

)
