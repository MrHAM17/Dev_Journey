package com.housitbuyrentsellproperty.app.modules.topagentsprofiledetail.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class TopagentsprofiledetailRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_320)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMonth: String? = MyApp.getInstance().resources.getString(R.string.lbl_month)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBrookvaleVilla: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_brookvale_villa)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl_5)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJakartaIndonesia: String? =
      MyApp.getInstance().resources.getString(R.string.msg_jakarta_indonesia)

)
