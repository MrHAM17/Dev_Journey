package com.firstbankdigitalbanking.app.modules.creditcards.`data`.model

import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class CreditCardsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtOverview: String? = MyApp.getInstance().resources.getString(R.string.lbl_credit_cards)
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
  var txtCardExpenseStatistics: String? =
      MyApp.getInstance().resources.getString(R.string.msg_card_expense_statistics)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDBLBank: String? = MyApp.getInstance().resources.getString(R.string.lbl_dbl_bank)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBRCBank: String? = MyApp.getInstance().resources.getString(R.string.lbl_brc_bank)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtABMBank: String? = MyApp.getInstance().resources.getString(R.string.lbl_abm_bank)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMCPBank: String? = MyApp.getInstance().resources.getString(R.string.lbl_mcp_bank)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCardList: String? = MyApp.getInstance().resources.getString(R.string.lbl_card_list)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAddNewCard: String? = MyApp.getInstance().resources.getString(R.string.lbl_add_new_card)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_credit_card_generally)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCardType: String? = MyApp.getInstance().resources.getString(R.string.lbl_card_type)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCardType1: String? = MyApp.getInstance().resources.getString(R.string.lbl_name_on_card)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCardType2: String? = MyApp.getInstance().resources.getString(R.string.lbl_card_number)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCardType3: String? = MyApp.getInstance().resources.getString(R.string.lbl_expiration_date)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCardSetting: String? = MyApp.getInstance().resources.getString(R.string.lbl_card_setting)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBlockCard: String? = MyApp.getInstance().resources.getString(R.string.lbl_block_card)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtInstantlyBlock: String? =
      MyApp.getInstance().resources.getString(R.string.msg_instantly_block)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtChangePicCode: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_change_pic_code)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWithdrawWithout: String? =
      MyApp.getInstance().resources.getString(R.string.msg_withdraw_without)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAddToGooglePay: String? =
      MyApp.getInstance().resources.getString(R.string.msg_add_to_google_pay)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWithdrawWithout1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_withdraw_without)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAddToApplePay: String? =
      MyApp.getInstance().resources.getString(R.string.msg_add_to_apple_pay)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWithdrawWithout2: String? =
      MyApp.getInstance().resources.getString(R.string.msg_withdraw_without)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAddToAppleStore: String? =
      MyApp.getInstance().resources.getString(R.string.msg_add_to_apple_store)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWithdrawWithout3: String? =
      MyApp.getInstance().resources.getString(R.string.msg_withdraw_without)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etClassicValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etNameValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etCardNumberValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etExpirationDateValue: String? = null
)
