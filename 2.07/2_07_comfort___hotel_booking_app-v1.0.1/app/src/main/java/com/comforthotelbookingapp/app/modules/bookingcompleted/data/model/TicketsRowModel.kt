package com.comforthotelbookingapp.app.modules.bookingcompleted.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class TicketsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtBulgariResort: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_bulgari_resort)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtParisFrance: String? = MyApp.getInstance().resources.getString(R.string.lbl_paris_france)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtYeayyouhavecompletedit: String? =
      MyApp.getInstance().resources.getString(R.string.msg_yeay_you_have_completed)

)
