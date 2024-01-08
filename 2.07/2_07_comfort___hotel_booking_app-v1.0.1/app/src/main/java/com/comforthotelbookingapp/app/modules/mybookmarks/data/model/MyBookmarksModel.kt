package com.comforthotelbookingapp.app.modules.mybookmarks.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class MyBookmarksModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtMyBookmarks: String? = MyApp.getInstance().resources.getString(R.string.lbl_my_bookmarks)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPresidentMilaDe: String? =
      MyApp.getInstance().resources.getString(R.string.msg_grand_resort_lagonissi)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFortyEight: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_8)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtParisFrance: String? = MyApp.getInstance().resources.getString(R.string.lbl_paris_france)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_35)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNight: String? = MyApp.getInstance().resources.getString(R.string.lbl_night)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPresidentMilaDe1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_martinez_cannes)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFortyEight1: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_8)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtParisFrance1: String? = MyApp.getInstance().resources.getString(R.string.lbl_paris_france)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.lbl_35)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNight1: String? = MyApp.getInstance().resources.getString(R.string.lbl_night)

)
