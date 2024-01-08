package com.healthcare.app.modules.settings.`data`.model

import com.healthcare.app.R
import com.healthcare.app.appcomponents.di.MyApp
import kotlin.String

data class SettingsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtAmeliaRenata: String? = MyApp.getInstance().resources.getString(R.string.lbl_amelia_renata)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMySaved: String? = MyApp.getInstance().resources.getString(R.string.lbl_my_saved)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAppointment: String? = MyApp.getInstance().resources.getString(R.string.lbl_appointment)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPaymentMethod: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_payment_method)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFAQs: String? = MyApp.getInstance().resources.getString(R.string.lbl_faqs)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHelp: String? = MyApp.getInstance().resources.getString(R.string.lbl_help)

)
