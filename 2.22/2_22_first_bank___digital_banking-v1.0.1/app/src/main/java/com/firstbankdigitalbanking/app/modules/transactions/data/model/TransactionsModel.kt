package com.firstbankdigitalbanking.app.modules.transactions.`data`.model

import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class TransactionsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtOverview: String? = MyApp.getInstance().resources.getString(R.string.lbl_transactions)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMyCards: String? = MyApp.getInstance().resources.getString(R.string.lbl_my_cards)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeAll: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_all)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMyExpense: String? = MyApp.getInstance().resources.getString(R.string.lbl_my_expense)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAug: String? = MyApp.getInstance().resources.getString(R.string.lbl_aug)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSep: String? = MyApp.getInstance().resources.getString(R.string.lbl_sep)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOct: String? = MyApp.getInstance().resources.getString(R.string.lbl_oct)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNov: String? = MyApp.getInstance().resources.getString(R.string.lbl_nov2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_12_500)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDec: String? = MyApp.getInstance().resources.getString(R.string.lbl_dec)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJan: String? = MyApp.getInstance().resources.getString(R.string.lbl_jan)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAllTransactions: String? =
      MyApp.getInstance().resources.getString(R.string.msg_all_transactions)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtIncome: String? = MyApp.getInstance().resources.getString(R.string.lbl_income)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtExpense: String? = MyApp.getInstance().resources.getString(R.string.lbl_expense)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSpotifySubscription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_spotify_subscription)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.msg_28_jan_12_30_am)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.lbl_2_5002)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrevious: String? = MyApp.getInstance().resources.getString(R.string.lbl_previous)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTwo: String? = MyApp.getInstance().resources.getString(R.string.lbl_2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtThree: String? = MyApp.getInstance().resources.getString(R.string.lbl_3)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFour: String? = MyApp.getInstance().resources.getString(R.string.lbl_4)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNext: String? = MyApp.getInstance().resources.getString(R.string.lbl_next)

)
