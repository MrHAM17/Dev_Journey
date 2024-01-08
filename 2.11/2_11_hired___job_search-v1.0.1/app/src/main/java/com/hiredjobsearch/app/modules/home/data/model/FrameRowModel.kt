package com.hiredjobsearch.app.modules.home.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class FrameRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSeniorUIUXDesigner: String? =
      MyApp.getInstance().resources.getString(R.string.msg_senior_ui_ux_designer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtShopee: String? = MyApp.getInstance().resources.getString(R.string.lbl_shopee)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJakartaIndonesia: String? =
      MyApp.getInstance().resources.getString(R.string.msg_jakarta_indonesia)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.msg_1100_12_000_month)

)
