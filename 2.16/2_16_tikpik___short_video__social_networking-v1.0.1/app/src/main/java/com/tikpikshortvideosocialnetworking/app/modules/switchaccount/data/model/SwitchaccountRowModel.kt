package com.tikpikshortvideosocialnetworking.app.modules.switchaccount.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class SwitchaccountRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtName: String? = MyApp.getInstance().resources.getString(R.string.lbl_andrew_ainsley)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtInformation: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_andrew_aisnley2)

)
