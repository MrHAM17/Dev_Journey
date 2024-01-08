package com.jusplaymoviestreamingapp.app.modules.editprofile.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class EditProfileModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtComedy: String? = MyApp.getInstance().resources.getString(R.string.lbl_edit_profile)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEmailAddress: String? = MyApp.getInstance().resources.getString(R.string.lbl_name)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEmailAddress1: String? = MyApp.getInstance().resources.getString(R.string.lbl_username)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEmailAddress2: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_email_address)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEmailAddress3: String? = MyApp.getInstance().resources.getString(R.string.lbl_phone_number)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEmailAddress4: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_date_of_birth)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDate: String? = MyApp.getInstance().resources.getString(R.string.msg_30_february_2022)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEmailAddress5: String? = MyApp.getInstance().resources.getString(R.string.lbl_gender)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etNameValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etUserNameValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etEmailValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etPhoneNumberValue: String? = null
)
