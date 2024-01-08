package com.tikpikshortvideosocialnetworking.app.modules.whenisyourbirthday.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class WhenIsYourBirthdayModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitleSection: String? =
      MyApp.getInstance().resources.getString(R.string.msg_when_is_your_birthday)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtYourBirthdayWill: String? =
      MyApp.getInstance().resources.getString(R.string.msg_your_birthday_will)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etDateValue: String? = null
)
