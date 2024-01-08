package com.firstbankdigitalbanking.app.modules.registers.`data`.model

import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class RegistersModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCreateANewAccount: String? =
      MyApp.getInstance().resources.getString(R.string.msg_create_a_new_account)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtItSFastAndEasy: String? =
      MyApp.getInstance().resources.getString(R.string.msg_it_s_fast_and_easy)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etFirstNameValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etLastNameValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etEmailValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etPasswordValue: String? = null
)
