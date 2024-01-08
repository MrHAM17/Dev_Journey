package com.vertexrealestateapp.app.modules.selectvirtualapp.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class SelectvirtualappRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWhatsapp: String? = MyApp.getInstance().resources.getString(R.string.lbl_whatsapp)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRecommend: String? = MyApp.getInstance().resources.getString(R.string.lbl_recommend)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etEmailValue: String? = null
)
