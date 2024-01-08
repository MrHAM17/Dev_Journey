package com.safebankmobilebankingapp.app.modules.history.`data`.model

import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.di.MyApp
import kotlin.String

data class SeventynineRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtAppleStore: String? = MyApp.getInstance().resources.getString(R.string.lbl_apple_store)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJune: String? = MyApp.getInstance().resources.getString(R.string.lbl_21_june_2022)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_220_00)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDebitCard: String? = MyApp.getInstance().resources.getString(R.string.lbl_debit_card)

)
