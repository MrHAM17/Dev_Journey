package com.moviestreaming.app.modules.searchten.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class SearchTenModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTrendingSearch: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_trending_search)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLoveInTrouble: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_love_in_trouble)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHotelDeLuna: String? = MyApp.getInstance().resources.getString(R.string.lbl_hotel_de_luna)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTheHeirs: String? = MyApp.getInstance().resources.getString(R.string.lbl_the_heirs)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWhatSWrongWith: String? =
      MyApp.getInstance().resources.getString(R.string.msg_what_s_wrong_with)

)
