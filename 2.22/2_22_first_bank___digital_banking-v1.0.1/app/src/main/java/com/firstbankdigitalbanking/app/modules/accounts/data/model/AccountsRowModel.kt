package com.firstbankdigitalbanking.app.modules.accounts.`data`.model

import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class AccountsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtMyBalance: String? = MyApp.getInstance().resources.getString(R.string.lbl_my_balance)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_12_750)

)
