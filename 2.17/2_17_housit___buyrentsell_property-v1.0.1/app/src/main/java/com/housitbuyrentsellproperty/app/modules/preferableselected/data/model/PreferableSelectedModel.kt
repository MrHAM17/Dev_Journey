package com.housitbuyrentsellproperty.app.modules.preferableselected.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class PreferableSelectedModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle: String? =
      MyApp.getInstance().resources.getString(R.string.msg_select_your_preferable_real)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_you_can_edit_this)

)
