package com.vertexrealestateapp.app.modules.pasttours.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class PastToursModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNotification: String? = MyApp.getInstance().resources.getString(R.string.lbl_past_tours)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.msg_mon_apr_4_10_00)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCanceled: String? = MyApp.getInstance().resources.getString(R.string.lbl_canceled)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtYouCanRequest: String? =
      MyApp.getInstance().resources.getString(R.string.msg_you_can_request)
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
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.lbl_436)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime1: String? = MyApp.getInstance().resources.getString(R.string.msg_mon_apr_4_10_00)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtYouCanRequest1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_you_can_request)
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
  var txtPrice3: String? = MyApp.getInstance().resources.getString(R.string.lbl_436)

)
