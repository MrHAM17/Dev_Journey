package com.shopsieecommerceapp.app.modules.events.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class EventsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtMonday: String? = MyApp.getInstance().resources.getString(R.string.lbl_monday)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDecemberCounter: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_december_2019)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_fashion_meetup)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.msg_starts_at_9_00am)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAvatarInitials: String? = MyApp.getInstance().resources.getString(R.string.lbl_9)

)
