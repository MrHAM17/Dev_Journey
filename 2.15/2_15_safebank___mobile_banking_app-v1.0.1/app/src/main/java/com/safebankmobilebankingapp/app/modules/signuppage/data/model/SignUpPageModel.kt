package com.safebankmobilebankingapp.app.modules.signuppage.`data`.model

import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.di.MyApp
import kotlin.String

data class SignUpPageModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtEmail: String? = MyApp.getInstance().resources.getString(R.string.lbl_name)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEmail1: String? = MyApp.getInstance().resources.getString(R.string.lbl_email)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEmail2: String? = MyApp.getInstance().resources.getString(R.string.lbl_phone)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEmail3: String? = MyApp.getInstance().resources.getString(R.string.msg_confirm_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDateOfBirth: String? = MyApp.getInstance().resources.getString(R.string.lbl_date_of_birth)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCountryRegion: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_country_region)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtConfirmation: String? =
      MyApp.getInstance().resources.getString(R.string.msg_already_have_an)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAlreadyHaveAn: String? = MyApp.getInstance().resources.getString(R.string.lbl_sign_in)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etPasswordValue: String? = MyApp.getInstance().resources.getString(R.string.lbl_xyz123)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etNameValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etEmailValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etCheckmarkValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etConfirmpasswordValue: String? = null
)
