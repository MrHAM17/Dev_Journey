package com.safebankmobilebankingapp.app.modules.history.`data`.model

import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.di.MyApp
import kotlin.String

data class SeventyfiveRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtBehance: String? = MyApp.getInstance().resources.getString(R.string.lbl_behance)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJune: String? = MyApp.getInstance().resources.getString(R.string.lbl_18_june_2022)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_27_00)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCreditCard: String? = MyApp.getInstance().resources.getString(R.string.lbl_credit_card)

)
