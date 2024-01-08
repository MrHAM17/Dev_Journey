package com.banksydigitalbanking.app.modules.mobileprepaidone.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class MobilePrepaidOneModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtWelcomeBack: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_mobile_prepaid2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel: String? = MyApp.getInstance().resources.getString(R.string.lbl_prepaid_to)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRecent: String? = MyApp.getInstance().resources.getString(R.string.lbl_recent)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAllContact: String? = MyApp.getInstance().resources.getString(R.string.lbl_all_contact)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtA: String? = MyApp.getInstance().resources.getString(R.string.lbl_a)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtB: String? = MyApp.getInstance().resources.getString(R.string.lbl_b)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJenningsChamplin: String? = MyApp.getInstance().resources.getString(R.string.lbl_baminu)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJenningsChamplin1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_ac_159_107_1396)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etNameValue: String? = null
)
