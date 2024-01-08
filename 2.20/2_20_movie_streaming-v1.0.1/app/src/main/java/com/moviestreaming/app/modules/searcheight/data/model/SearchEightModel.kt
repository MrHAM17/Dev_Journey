package com.moviestreaming.app.modules.searcheight.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class SearchEightModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNons: String? = MyApp.getInstance().resources.getString(R.string.lbl_search)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTrendingSearch: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_trending_search)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTreasureIsland: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_treasure_island)
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
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMobyDick: String? = MyApp.getInstance().resources.getString(R.string.lbl_moby_dick)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBulletBoy: String? = MyApp.getInstance().resources.getString(R.string.lbl_bullet_boy)

)
