package com.tikpikshortvideosocialnetworking.app.modules.trendingsounds.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class TrendingSoundsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFavoriteGirl: String? = MyApp.getInstance().resources.getString(R.string.lbl_favorite_girl)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJustinBieber: String? = MyApp.getInstance().resources.getString(R.string.lbl_justin_bieber)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_01_00)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDistance: String? = MyApp.getInstance().resources.getString(R.string.lbl_387_5m)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtYummy: String? = MyApp.getInstance().resources.getString(R.string.lbl_yummy)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJustinBieber1: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_justin_bieber)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime1: String? = MyApp.getInstance().resources.getString(R.string.lbl_00_45)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDistance1: String? = MyApp.getInstance().resources.getString(R.string.lbl_289_4m)

)
