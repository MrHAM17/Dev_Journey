package com.housitbuyrentsellproperty.app.modules.addphotos.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class AddPhotosModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPageTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_add_listing)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle: String? = MyApp.getInstance().resources.getString(R.string.msg_add_photos_to_your)

)
