package com.vertexrealestateapp.app.modules.addnewpropertytimetosell.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class AddNewPropertyTimeToSellModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNotification: String? =
      MyApp.getInstance().resources.getString(R.string.msg_add_new_property)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTimeToSell: String? = MyApp.getInstance().resources.getString(R.string.lbl_time_to_sell)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHowSoonDoYou: String? =
      MyApp.getInstance().resources.getString(R.string.msg_how_soon_do_you)

)
