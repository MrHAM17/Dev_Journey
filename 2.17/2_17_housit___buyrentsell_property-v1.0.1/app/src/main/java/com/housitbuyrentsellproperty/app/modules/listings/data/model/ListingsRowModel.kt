package com.housitbuyrentsellproperty.app.modules.listings.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class ListingsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_220)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDay: String? = MyApp.getInstance().resources.getString(R.string.lbl_day)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFairviewApartment: String? =
      MyApp.getInstance().resources.getString(R.string.msg_fairview_apartment)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_22)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJakartaIndonesia: String? =
      MyApp.getInstance().resources.getString(R.string.msg_jakarta_indonesia)

)
