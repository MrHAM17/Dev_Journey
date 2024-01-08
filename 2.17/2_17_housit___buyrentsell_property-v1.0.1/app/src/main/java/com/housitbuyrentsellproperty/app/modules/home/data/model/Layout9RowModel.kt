package com.housitbuyrentsellproperty.app.modules.home.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class Layout9RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSkyDandelionsApartment: String? =
      MyApp.getInstance().resources.getString(R.string.msg_sky_dandelions_apartment)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_9)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJakartaIndonesia: String? =
      MyApp.getInstance().resources.getString(R.string.msg_jakarta_indonesia)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_290)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMonth: String? = MyApp.getInstance().resources.getString(R.string.lbl_month)

)
