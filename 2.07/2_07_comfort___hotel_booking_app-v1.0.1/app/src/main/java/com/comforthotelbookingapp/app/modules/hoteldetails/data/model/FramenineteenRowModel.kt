package com.comforthotelbookingapp.app.modules.hoteldetails.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class FramenineteenRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtJennyWilson: String? = MyApp.getInstance().resources.getString(R.string.lbl_jenny_wilson)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDec: String? = MyApp.getInstance().resources.getString(R.string.lbl_dec_10_2024)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtVeryniceandcomfortab: String? =
      MyApp.getInstance().resources.getString(R.string.msg_very_nice_and_comfortable)

)
