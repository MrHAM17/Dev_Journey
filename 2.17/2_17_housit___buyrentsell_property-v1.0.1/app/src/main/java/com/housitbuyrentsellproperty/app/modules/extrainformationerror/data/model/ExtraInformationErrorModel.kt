package com.housitbuyrentsellproperty.app.modules.extrainformationerror.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class ExtraInformationErrorModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle: String? = MyApp.getInstance().resources.getString(R.string.msg_aw_snap_something)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lorem_ipsum_dolor2)

)
