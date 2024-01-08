package com.comforthotelbookingapp.app.modules.bookingongoing.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class Tickets1RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtRoyalePresident: String? =
      MyApp.getInstance().resources.getString(R.string.msg_royale_president)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtParisFrance: String? = MyApp.getInstance().resources.getString(R.string.lbl_paris_france)

)
