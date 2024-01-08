package com.safebankmobilebankingapp.app.modules.history.`data`.model

import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.di.MyApp
import kotlin.String

data class SeventyoneRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSkypePremium: String? = MyApp.getInstance().resources.getString(R.string.lbl_skype_premium)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJune: String? = MyApp.getInstance().resources.getString(R.string.lbl_20_june_2022)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_56_00)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDebitCard: String? = MyApp.getInstance().resources.getString(R.string.lbl_debit_card)

)
