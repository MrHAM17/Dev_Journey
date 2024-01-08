package com.housitbuyrentsellproperty.app.modules.notificationlist.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class SamuelellaRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSamuelElla: String? = MyApp.getInstance().resources.getString(R.string.lbl_samuel_ella)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJustbuyyourlistingSchoolviewHo: String? =
      MyApp.getInstance().resources.getString(R.string.msg_just_buy_your_listing)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_40_mins_ago)

)
