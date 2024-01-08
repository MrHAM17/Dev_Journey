package com.comforthotelbookingapp.app.modules.homescreentabcontainer.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class HomeScreenTabContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtComfort: String? = MyApp.getInstance().resources.getString(R.string.lbl_comfort)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHelloDaniel: String? = MyApp.getInstance().resources.getString(R.string.msg_hello_daniel)

)
