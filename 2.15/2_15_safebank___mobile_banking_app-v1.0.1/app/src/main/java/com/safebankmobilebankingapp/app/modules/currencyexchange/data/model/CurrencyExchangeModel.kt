package com.safebankmobilebankingapp.app.modules.currencyexchange.`data`.model

import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.di.MyApp
import kotlin.String

data class CurrencyExchangeModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTransfer: String? = MyApp.getInstance().resources.getString(R.string.msg_currency_exchange)
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
  var txtZipcode2: String? = MyApp.getInstance().resources.getString(R.string.lbl_4023)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZipcode3: String? = MyApp.getInstance().resources.getString(R.string.lbl_5534)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtComment: String? = MyApp.getInstance().resources.getString(R.string.lbl_comment)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etPriceValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etCommentValue: String? = null
)
