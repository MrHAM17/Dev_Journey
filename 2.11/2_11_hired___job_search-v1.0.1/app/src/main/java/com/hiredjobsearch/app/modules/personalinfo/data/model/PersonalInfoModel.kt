package com.hiredjobsearch.app.modules.personalinfo.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class PersonalInfoModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtJobDetails: String? = MyApp.getInstance().resources.getString(R.string.lbl_personal_info)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelSemi: String? = MyApp.getInstance().resources.getString(R.string.lbl_first_name)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelSemi1: String? = MyApp.getInstance().resources.getString(R.string.lbl_last_name)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelSemi2: String? = MyApp.getInstance().resources.getString(R.string.lbl_email)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelSemi3: String? = MyApp.getInstance().resources.getString(R.string.lbl_phone)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelSemi4: String? = MyApp.getInstance().resources.getString(R.string.lbl_location)
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
  var etPhoneValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etLocationValue: String? = null
)
