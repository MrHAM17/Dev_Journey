package com.banksydigitalbanking.app.modules.activity.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class ActivityModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWelcomeBack: String? = MyApp.getInstance().resources.getString(R.string.lbl_activity)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtIncome: String? = MyApp.getInstance().resources.getString(R.string.lbl_income)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtExpenses: String? = MyApp.getInstance().resources.getString(R.string.lbl_expenses)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJan: String? = MyApp.getInstance().resources.getString(R.string.lbl_16_23_jan)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTransaction: String? = MyApp.getInstance().resources.getString(R.string.lbl_transaction)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJanCounter: String? = MyApp.getInstance().resources.getString(R.string.lbl_25_jan)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLimit: String? = MyApp.getInstance().resources.getString(R.string.lbl_limit)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_105_00)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPerDay: String? = MyApp.getInstance().resources.getString(R.string.lbl_per_day)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeventeen: String? = MyApp.getInstance().resources.getString(R.string.lbl_17)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMon: String? = MyApp.getInstance().resources.getString(R.string.lbl_mon)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEighteen: String? = MyApp.getInstance().resources.getString(R.string.lbl_18)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTue: String? = MyApp.getInstance().resources.getString(R.string.lbl_tue)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNineteen: String? = MyApp.getInstance().resources.getString(R.string.lbl_19)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWed: String? = MyApp.getInstance().resources.getString(R.string.lbl_wed)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTwenty: String? = MyApp.getInstance().resources.getString(R.string.lbl_20)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtThu: String? = MyApp.getInstance().resources.getString(R.string.lbl_thu)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTwentyOne: String? = MyApp.getInstance().resources.getString(R.string.lbl_21)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFri: String? = MyApp.getInstance().resources.getString(R.string.lbl_fri)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTwentyTwo: String? = MyApp.getInstance().resources.getString(R.string.lbl_22)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSat: String? = MyApp.getInstance().resources.getString(R.string.lbl_sat)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTwentyThree: String? = MyApp.getInstance().resources.getString(R.string.lbl_23)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSun: String? = MyApp.getInstance().resources.getString(R.string.lbl_sun)

)
