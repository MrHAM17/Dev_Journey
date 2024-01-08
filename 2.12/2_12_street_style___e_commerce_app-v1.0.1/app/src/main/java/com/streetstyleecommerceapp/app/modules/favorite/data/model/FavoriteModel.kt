package com.streetstyleecommerceapp.app.modules.favorite.`data`.model

import com.streetstyleecommerceapp.app.R
import com.streetstyleecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class FavoriteModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFavorite: String? = MyApp.getInstance().resources.getString(R.string.lbl_favorite)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCoupon: String? = MyApp.getInstance().resources.getString(R.string.lbl_coupon)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBoxTee: String? = MyApp.getInstance().resources.getString(R.string.lbl_box_tee)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBoxTee1: String? = MyApp.getInstance().resources.getString(R.string.lbl_box_tee)

)
