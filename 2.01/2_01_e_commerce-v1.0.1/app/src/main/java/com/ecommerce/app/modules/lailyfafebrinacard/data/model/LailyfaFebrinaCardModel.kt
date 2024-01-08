package com.ecommerce.app.modules.lailyfafebrinacard.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class LailyfaFebrinaCardModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLailyfaFebrina: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lailyfa_febrina)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDebitCardNumber: String? = MyApp.getInstance().resources.getString(R.string.msg_6326_9124)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCARDHOLDER: String? = MyApp.getInstance().resources.getString(R.string.lbl_card_holder)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLailyfaFebrina1: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_lailyfa_febrina)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCARDSAVE: String? = MyApp.getInstance().resources.getString(R.string.lbl_card_save)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDebitCardExpiry: String? = MyApp.getInstance().resources.getString(R.string.lbl_06_24)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCardNumber: String? = MyApp.getInstance().resources.getString(R.string.lbl_card_number)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtExpirationDate: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_expiration_date)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSecurityCode: String? = MyApp.getInstance().resources.getString(R.string.lbl_security_code)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCardHolder: String? = MyApp.getInstance().resources.getString(R.string.lbl_card_holder2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etCardNumberValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etExpirationDateValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etSecurityCodeValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etCardHolderNameValue: String? = null
)
