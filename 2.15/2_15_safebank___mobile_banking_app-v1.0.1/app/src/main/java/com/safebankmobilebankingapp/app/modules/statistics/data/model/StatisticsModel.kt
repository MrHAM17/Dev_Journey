package com.safebankmobilebankingapp.app.modules.statistics.`data`.model

import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.di.MyApp
import kotlin.String

data class StatisticsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSUN: String? = MyApp.getInstance().resources.getString(R.string.lbl_sun)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMON: String? = MyApp.getInstance().resources.getString(R.string.lbl_mon)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTUE: String? = MyApp.getInstance().resources.getString(R.string.lbl_tue)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWED: String? = MyApp.getInstance().resources.getString(R.string.lbl_wed)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTHU: String? = MyApp.getInstance().resources.getString(R.string.lbl_thu)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFRI: String? = MyApp.getInstance().resources.getString(R.string.lbl_fri)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSAT: String? = MyApp.getInstance().resources.getString(R.string.lbl_sat)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZero: String? = MyApp.getInstance().resources.getString(R.string.lbl_0)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTwenty: String? = MyApp.getInstance().resources.getString(R.string.lbl_20)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtForty: String? = MyApp.getInstance().resources.getString(R.string.lbl_40)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSixty: String? = MyApp.getInstance().resources.getString(R.string.lbl_60)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEighty: String? = MyApp.getInstance().resources.getString(R.string.lbl_80)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOneHundred: String? = MyApp.getInstance().resources.getString(R.string.lbl_100)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtExpense: String? = MyApp.getInstance().resources.getString(R.string.lbl_expense)

)
