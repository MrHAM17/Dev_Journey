package com.streetstyleecommerceapp.app.modules.menu.`data`.model

import com.streetstyleecommerceapp.app.R
import com.streetstyleecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class MenuModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtMildredBennett: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_mildred_bennett)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEmail: String? = MyApp.getInstance().resources.getString(R.string.lbl_user_gmail_com)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDiscover: String? = MyApp.getInstance().resources.getString(R.string.lbl_discover)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtShop: String? = MyApp.getInstance().resources.getString(R.string.lbl_shop)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFavorites: String? = MyApp.getInstance().resources.getString(R.string.lbl_favorites)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtInbox: String? = MyApp.getInstance().resources.getString(R.string.lbl_inbox)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAskAnExpert: String? = MyApp.getInstance().resources.getString(R.string.lbl_ask_an_expert)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSettings: String? = MyApp.getInstance().resources.getString(R.string.lbl_settings)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLogOut: String? = MyApp.getInstance().resources.getString(R.string.lbl_log_out)

)
