package com.streetstyleecommerceapp.app.modules.favorite.`data`.model

import com.streetstyleecommerceapp.app.R
import com.streetstyleecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class FavoriteRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtBoxTee: String? = MyApp.getInstance().resources.getString(R.string.lbl_box_tee)

)
