package com.housitbuyrentsellproperty.app.modules.allreviews.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class AllreviewsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFairviewApartment: String? =
      MyApp.getInstance().resources.getString(R.string.msg_fairview_apartment)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_9)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSemarangIndonesia: String? =
      MyApp.getInstance().resources.getString(R.string.msg_semarang_indonesia)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtGeraldo: String? = MyApp.getInstance().resources.getString(R.string.lbl_geraldo)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lorem_ipsum_dolor5)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_10_mins_ago)

)
