package com.firstbankdigitalbanking.app.modules.accounts.`data`.model

import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class AccountsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtOverview: String? = MyApp.getInstance().resources.getString(R.string.lbl_accounts)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLastTransaction: String? =
      MyApp.getInstance().resources.getString(R.string.msg_last_transaction)
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
  var txtDate: String? = MyApp.getInstance().resources.getString(R.string.lbl_25_jan_2021)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_150)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMobileService: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_mobile_service)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDate1: String? = MyApp.getInstance().resources.getString(R.string.lbl_25_jan_2021)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.lbl_340)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEmillyWilson: String? = MyApp.getInstance().resources.getString(R.string.lbl_emilly_wilson)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDate2: String? = MyApp.getInstance().resources.getString(R.string.lbl_25_jan_2021)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice2: String? = MyApp.getInstance().resources.getString(R.string.lbl_780)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMyCard: String? = MyApp.getInstance().resources.getString(R.string.lbl_my_card)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeAll: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_all)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBalance: String? = MyApp.getInstance().resources.getString(R.string.lbl_balance)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice3: String? = MyApp.getInstance().resources.getString(R.string.lbl_5_756)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCARDHOLDER: String? = MyApp.getInstance().resources.getString(R.string.lbl_card_holder)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEddyCusuma: String? = MyApp.getInstance().resources.getString(R.string.lbl_eddy_cusuma)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtVALIDTHRU: String? = MyApp.getInstance().resources.getString(R.string.lbl_valid_thru)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOneThousandTwoHundredTwentyTwo: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_12_22)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtThirtySevenMillionSevenHundred: String? =
      MyApp.getInstance().resources.getString(R.string.msg_3778_1234)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDebitCreditOverview: String? =
      MyApp.getInstance().resources.getString(R.string.msg_debit_credit_overview)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDebit: String? = MyApp.getInstance().resources.getString(R.string.lbl_debit)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCredit: String? = MyApp.getInstance().resources.getString(R.string.lbl_credit)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSat: String? = MyApp.getInstance().resources.getString(R.string.lbl_sat)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSun: String? = MyApp.getInstance().resources.getString(R.string.lbl_sun)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMon: String? = MyApp.getInstance().resources.getString(R.string.lbl_mon)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTue: String? = MyApp.getInstance().resources.getString(R.string.lbl_tue)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWed: String? = MyApp.getInstance().resources.getString(R.string.lbl_wed)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtThu: String? = MyApp.getInstance().resources.getString(R.string.lbl_thu)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFri: String? = MyApp.getInstance().resources.getString(R.string.lbl_fri)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtInvoicesSent: String? = MyApp.getInstance().resources.getString(R.string.lbl_invoices_sent)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAppleStore: String? = MyApp.getInstance().resources.getString(R.string.lbl_apple_store)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHAgo: String? = MyApp.getInstance().resources.getString(R.string.lbl_5h_ago)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice4: String? = MyApp.getInstance().resources.getString(R.string.lbl_450)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMichael: String? = MyApp.getInstance().resources.getString(R.string.lbl_michael)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDuration: String? = MyApp.getInstance().resources.getString(R.string.lbl_2_days_ago)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice5: String? = MyApp.getInstance().resources.getString(R.string.lbl_160)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPlaystation: String? = MyApp.getInstance().resources.getString(R.string.lbl_playstation)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDuration1: String? = MyApp.getInstance().resources.getString(R.string.lbl_5_days_ago)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice6: String? = MyApp.getInstance().resources.getString(R.string.lbl_1085)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWilliam: String? = MyApp.getInstance().resources.getString(R.string.lbl_william)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDuration2: String? = MyApp.getInstance().resources.getString(R.string.lbl_10_days_ago)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice7: String? = MyApp.getInstance().resources.getString(R.string.lbl_90)

)
