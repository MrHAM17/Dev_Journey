package com.vertexrealestateapp.app.modules.home.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class HomeModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLocation: String? = MyApp.getInstance().resources.getString(R.string.lbl_location)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtStCelinaDelaware: String? =
      MyApp.getInstance().resources.getString(R.string.msg_st_celina_delaware)
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
  var txtStCelinaDelaware1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_st_celina_delaware2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_500)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPerMonth: String? = MyApp.getInstance().resources.getString(R.string.lbl_per_month)
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
  var txtStCelinaDelaware2: String? =
      MyApp.getInstance().resources.getString(R.string.msg_st_celina_delaware2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.lbl_500)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPerMonth1: String? = MyApp.getInstance().resources.getString(R.string.lbl_per_month)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHome: String? = MyApp.getInstance().resources.getString(R.string.lbl_home)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMessage: String? = MyApp.getInstance().resources.getString(R.string.lbl_message)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDiscover: String? = MyApp.getInstance().resources.getString(R.string.lbl_discover)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMyHome: String? = MyApp.getInstance().resources.getString(R.string.lbl_my_home)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtProfile: String? = MyApp.getInstance().resources.getString(R.string.lbl_profile)

)
