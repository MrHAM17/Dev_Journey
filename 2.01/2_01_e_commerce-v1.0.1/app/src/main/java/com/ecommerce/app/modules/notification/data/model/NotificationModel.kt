package com.ecommerce.app.modules.notification.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class NotificationModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNotification: String? = MyApp.getInstance().resources.getString(R.string.lbl_notification)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOffer: String? = MyApp.getInstance().resources.getString(R.string.lbl_offer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFeed: String? = MyApp.getInstance().resources.getString(R.string.lbl_feed)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAcivity: String? = MyApp.getInstance().resources.getString(R.string.lbl_acivity)

)
