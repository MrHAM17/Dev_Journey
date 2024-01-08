package com.fashionistaecommerceapp.app.modules.profile.`data`.model

import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class ProfileModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtProfile: String? = MyApp.getInstance().resources.getString(R.string.lbl_profile)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAnneChristion: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_anne_christion)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEmail: String? = MyApp.getInstance().resources.getString(R.string.lbl_xyz_gmail_com)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPersonalData: String? = MyApp.getInstance().resources.getString(R.string.lbl_personal_data)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTransactionHistory: String? =
      MyApp.getInstance().resources.getString(R.string.msg_transaction_history)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDiscountCode: String? = MyApp.getInstance().resources.getString(R.string.lbl_discount_code)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSettings: String? = MyApp.getInstance().resources.getString(R.string.lbl_settings)

)
