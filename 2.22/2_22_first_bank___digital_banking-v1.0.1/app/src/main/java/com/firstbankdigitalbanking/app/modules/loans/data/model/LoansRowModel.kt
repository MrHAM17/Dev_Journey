package com.firstbankdigitalbanking.app.modules.loans.`data`.model

import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class LoansRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPersonalLoans: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_personal_loans)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_50_000)

)
