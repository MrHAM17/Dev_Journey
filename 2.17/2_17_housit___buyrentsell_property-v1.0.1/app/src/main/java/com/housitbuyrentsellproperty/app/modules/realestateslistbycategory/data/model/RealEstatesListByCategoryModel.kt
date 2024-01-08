package com.housitbuyrentsellproperty.app.modules.realestateslistbycategory.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class RealEstatesListByCategoryModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFeaturedEstates: String? = MyApp.getInstance().resources.getString(R.string.lbl_top_villa)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl_120)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtVilla: String? = MyApp.getInstance().resources.getString(R.string.lbl_villa)

)
