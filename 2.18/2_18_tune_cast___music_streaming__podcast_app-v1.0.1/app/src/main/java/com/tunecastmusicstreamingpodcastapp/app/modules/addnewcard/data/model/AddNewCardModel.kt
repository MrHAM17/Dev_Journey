package com.tunecastmusicstreamingpodcastapp.app.modules.addnewcard.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class AddNewCardModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_add_new_card)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMocard: String? = MyApp.getInstance().resources.getString(R.string.lbl_mocard)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.msg)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCardHolderName: String? =
      MyApp.getInstance().resources.getString(R.string.msg_card_holder_name)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText1: String? = MyApp.getInstance().resources.getString(R.string.lbl2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtExpiryDate: String? = MyApp.getInstance().resources.getString(R.string.lbl_expiry_date)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText2: String? = MyApp.getInstance().resources.getString(R.string.lbl3)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCardName: String? = MyApp.getInstance().resources.getString(R.string.lbl_card_name)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCardNumber: String? = MyApp.getInstance().resources.getString(R.string.lbl_card_number)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtExpiryDate1: String? = MyApp.getInstance().resources.getString(R.string.lbl_expiry_date2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCVV: String? = MyApp.getInstance().resources.getString(R.string.lbl_cvv)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDate: String? = MyApp.getInstance().resources.getString(R.string.lbl_10_07_2026)
  ,
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
  var etCvvValue: String? = null
)
