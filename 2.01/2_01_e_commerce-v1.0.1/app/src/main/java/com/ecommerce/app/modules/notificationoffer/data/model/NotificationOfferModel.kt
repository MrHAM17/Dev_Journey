package com.ecommerce.app.modules.notificationoffer.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class NotificationOfferModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNotification: String? = MyApp.getInstance().resources.getString(R.string.lbl_notification)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTheBestTitle: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_the_best_title)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_culpa_cillum_consectetur)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.msg_april_30_2014_1_01)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOffer: String? = MyApp.getInstance().resources.getString(R.string.msg_summer_offer_98)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_culpa_cillum_consectetur)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime1: String? = MyApp.getInstance().resources.getString(R.string.msg_april_30_2014_1_01)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOffer1: String? = MyApp.getInstance().resources.getString(R.string.msg_special_offer_25)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription2: String? =
      MyApp.getInstance().resources.getString(R.string.msg_culpa_cillum_consectetur)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime2: String? = MyApp.getInstance().resources.getString(R.string.msg_april_30_2014_1_01)

)
