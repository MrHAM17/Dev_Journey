package com.vertexrealestateapp.app.modules.notification.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class SeventyfourRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtThereAreGoodDeals: String? =
      MyApp.getInstance().resources.getString(R.string.msg_there_are_good_deals)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLotsOfGreatDeals: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lots_of_great_deals)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDistance: String? = MyApp.getInstance().resources.getString(R.string.lbl_1m_ago)

)
