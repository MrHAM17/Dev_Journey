package com.comforthotelbookingapp.app.modules.homescreen.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class HomeScreenModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtRecentlyBooked: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_recently_booked)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeAll: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_all)

)
