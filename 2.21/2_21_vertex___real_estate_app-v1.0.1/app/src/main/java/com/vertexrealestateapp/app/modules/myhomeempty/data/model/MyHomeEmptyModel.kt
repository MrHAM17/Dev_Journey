package com.vertexrealestateapp.app.modules.myhomeempty.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class MyHomeEmptyModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtReadyToSellYour: String? =
      MyApp.getInstance().resources.getString(R.string.msg_ready_to_sell_your)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRelaxIsMaking: String? =
      MyApp.getInstance().resources.getString(R.string.msg_relax_is_making)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHome: String? = MyApp.getInstance().resources.getString(R.string.lbl_home)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMessage: String? = MyApp.getInstance().resources.getString(R.string.lbl_message)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDiscover: String? = MyApp.getInstance().resources.getString(R.string.lbl_discover)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMyHome: String? = MyApp.getInstance().resources.getString(R.string.lbl_my_home)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtProfile: String? = MyApp.getInstance().resources.getString(R.string.lbl_profile)

)
