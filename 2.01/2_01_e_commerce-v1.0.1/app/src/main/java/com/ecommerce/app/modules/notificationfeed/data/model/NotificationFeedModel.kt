package com.ecommerce.app.modules.notificationfeed.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class NotificationFeedModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFeed: String? = MyApp.getInstance().resources.getString(R.string.lbl_feed)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNewProduct: String? = MyApp.getInstance().resources.getString(R.string.lbl_new_product)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNikeAirZoomPegasus: String? =
      MyApp.getInstance().resources.getString(R.string.msg_nike_air_zoom_pegasus2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.msg_june_3_2015_5_06)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBestProduct: String? = MyApp.getInstance().resources.getString(R.string.lbl_best_product)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNikeAirZoomPegasus1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_nike_air_zoom_pegasus2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime1: String? = MyApp.getInstance().resources.getString(R.string.msg_june_3_2015_5_06)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNewProduct1: String? = MyApp.getInstance().resources.getString(R.string.lbl_new_product)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNikeAirZoomPegasus2: String? =
      MyApp.getInstance().resources.getString(R.string.msg_nike_air_zoom_pegasus2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime2: String? = MyApp.getInstance().resources.getString(R.string.msg_june_3_2015_5_06)

)
