package com.firstbankdigitalbanking.app.modules.creditcards.`data`.model

import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class CreditcardsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCardType: String? = MyApp.getInstance().resources.getString(R.string.lbl_card_type)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSecondary: String? = MyApp.getInstance().resources.getString(R.string.lbl_secondary)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBank: String? = MyApp.getInstance().resources.getString(R.string.lbl_bank)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDBLBank: String? = MyApp.getInstance().resources.getString(R.string.lbl_dbl_bank)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtViewDetails: String? = MyApp.getInstance().resources.getString(R.string.lbl_view_details)

)
