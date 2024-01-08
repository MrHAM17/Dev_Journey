package com.safebankmobilebankingapp.app.modules.nationalbank.`data`.model

import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.di.MyApp
import kotlin.String

data class NationalBankModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTransfer: String? = MyApp.getInstance().resources.getString(R.string.lbl_national_bank)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_444_00)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZipcode: String? = MyApp.getInstance().resources.getString(R.string.lbl_4023)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZipcode1: String? = MyApp.getInstance().resources.getString(R.string.lbl_5534)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.msg_12_30_pm_25_june)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOneHundredFifty: String? = MyApp.getInstance().resources.getString(R.string.lbl_150)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOneHundred: String? = MyApp.getInstance().resources.getString(R.string.lbl_100)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFifty: String? = MyApp.getInstance().resources.getString(R.string.lbl_50)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZero: String? = MyApp.getInstance().resources.getString(R.string.lbl_0)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.msg_10_790_00_total)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice2: String? = MyApp.getInstance().resources.getString(R.string.lbl_220_00)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime1: String? = MyApp.getInstance().resources.getString(R.string.msg_10_30_pm_18_june)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice3: String? = MyApp.getInstance().resources.getString(R.string.lbl_170_00)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime2: String? = MyApp.getInstance().resources.getString(R.string.msg_12_45_pm_17_june)

)
