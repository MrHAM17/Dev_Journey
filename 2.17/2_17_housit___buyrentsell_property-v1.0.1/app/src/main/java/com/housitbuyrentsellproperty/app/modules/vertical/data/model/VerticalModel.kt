package com.housitbuyrentsellproperty.app.modules.vertical.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class VerticalModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPageTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_my_favorite)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl_3)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEstates: String? = MyApp.getInstance().resources.getString(R.string.lbl_estates)

)
