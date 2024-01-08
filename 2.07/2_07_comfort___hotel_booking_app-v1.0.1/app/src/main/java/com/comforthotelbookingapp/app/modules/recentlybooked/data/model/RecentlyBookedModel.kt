package com.comforthotelbookingapp.app.modules.recentlybooked.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class RecentlyBookedModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtRecentlyBooked: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_recently_booked)

)
