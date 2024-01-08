package com.comforthotelbookingapp.app.modules.mybookmarks.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class MybookmarksRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPresidentMilaDe: String? =
      MyApp.getInstance().resources.getString(R.string.msg_de_paris_monte_carlo)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFortyEight: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_6)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtParisFrance: String? = MyApp.getInstance().resources.getString(R.string.lbl_paris_france)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_29)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNight: String? = MyApp.getInstance().resources.getString(R.string.lbl_night)

)
