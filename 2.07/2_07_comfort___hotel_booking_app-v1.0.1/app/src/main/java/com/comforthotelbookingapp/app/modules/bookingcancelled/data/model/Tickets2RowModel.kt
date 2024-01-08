package com.comforthotelbookingapp.app.modules.bookingcancelled.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class Tickets2RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPalmsCasinoResort: String? =
      MyApp.getInstance().resources.getString(R.string.msg_palms_casino_resort)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLondonUnitedKingdom: String? =
      MyApp.getInstance().resources.getString(R.string.msg_london_united_kingdom)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtYouCanceledThis: String? =
      MyApp.getInstance().resources.getString(R.string.msg_you_canceled_this)

)
