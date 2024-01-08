package com.vertexrealestateapp.app.modules.favorite.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class FavoriteModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNotification: String? = MyApp.getInstance().resources.getString(R.string.lbl_favorites)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHomesCounter: String? = MyApp.getInstance().resources.getString(R.string.lbl_8_homes)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtGoldenMeadows: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_golden_meadows)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtStCelinaDelaware: String? =
      MyApp.getInstance().resources.getString(R.string.msg_st_celina_delaware2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_price)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.lbl_500)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtGoldenMeadows1: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_golden_meadows)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtStCelinaDelaware1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_st_celina_delaware2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice2: String? = MyApp.getInstance().resources.getString(R.string.lbl_price)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice3: String? = MyApp.getInstance().resources.getString(R.string.lbl_500)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtGoldenMeadows2: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_golden_meadows)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtStCelinaDelaware2: String? =
      MyApp.getInstance().resources.getString(R.string.msg_st_celina_delaware2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice4: String? = MyApp.getInstance().resources.getString(R.string.lbl_price)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice5: String? = MyApp.getInstance().resources.getString(R.string.lbl_500)

)
