package com.tunecastmusicstreamingpodcastapp.app.modules.paymentsummary.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class PaymentSummaryModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFillYourProfile: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_review_summary)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_9_99)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMonth: String? = MyApp.getInstance().resources.getString(R.string.lbl_month)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtListeningWithBetter: String? =
      MyApp.getInstance().resources.getString(R.string.msg_listening_with_better)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtListeningWithout: String? =
      MyApp.getInstance().resources.getString(R.string.msg_listening_without)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtShufflePlayDownload: String? =
      MyApp.getInstance().resources.getString(R.string.msg_shuffle_play_download)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAmount: String? = MyApp.getInstance().resources.getString(R.string.lbl_amount)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.lbl_9_99)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTax: String? = MyApp.getInstance().resources.getString(R.string.lbl_tax)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice2: String? = MyApp.getInstance().resources.getString(R.string.lbl_1_99)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTotal: String? = MyApp.getInstance().resources.getString(R.string.lbl_total)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice3: String? = MyApp.getInstance().resources.getString(R.string.lbl_11_99)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.msg2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtChange: String? = MyApp.getInstance().resources.getString(R.string.lbl_change)

)
