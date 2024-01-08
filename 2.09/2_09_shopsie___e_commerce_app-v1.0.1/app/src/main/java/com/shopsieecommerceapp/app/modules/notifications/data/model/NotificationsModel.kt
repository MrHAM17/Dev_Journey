package com.shopsieecommerceapp.app.modules.notifications.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class NotificationsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNotifications: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_notifications)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtChip: String? = MyApp.getInstance().resources.getString(R.string.lbl_03)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtUsername: String? = MyApp.getInstance().resources.getString(R.string.lbl_gunther_ackner)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCopy: String? = MyApp.getInstance().resources.getString(R.string.msg_liked_your_photo)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_4min)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtUsername1: String? = MyApp.getInstance().resources.getString(R.string.lbl_marriet_miles)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime1: String? = MyApp.getInstance().resources.getString(R.string.lbl_4min)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCopy1: String? = MyApp.getInstance().resources.getString(R.string.msg_sent_you_a_friend)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtUsername2: String? = MyApp.getInstance().resources.getString(R.string.lbl_marriet_miles)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime2: String? = MyApp.getInstance().resources.getString(R.string.lbl_4min)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCopy2: String? = MyApp.getInstance().resources.getString(R.string.msg_sent_you_a_friend)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtUsername3: String? = MyApp.getInstance().resources.getString(R.string.lbl_gunther_ackner)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCopy3: String? = MyApp.getInstance().resources.getString(R.string.msg_liked_your_photo)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime3: String? = MyApp.getInstance().resources.getString(R.string.lbl_4min)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtUsername4: String? = MyApp.getInstance().resources.getString(R.string.lbl_marriet_miles)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime4: String? = MyApp.getInstance().resources.getString(R.string.lbl_4min)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCopy4: String? = MyApp.getInstance().resources.getString(R.string.msg_sent_you_a_friend)

)
