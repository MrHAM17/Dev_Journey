package com.firstbankdigitalbanking.app.modules.settingeditprofile.`data`.model

import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class SettingEditProfileModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCardType: String? = MyApp.getInstance().resources.getString(R.string.lbl_your_name)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCardType1: String? = MyApp.getInstance().resources.getString(R.string.lbl_user_name)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCardType2: String? = MyApp.getInstance().resources.getString(R.string.lbl_email)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCardType3: String? = MyApp.getInstance().resources.getString(R.string.lbl_password)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCardType4: String? = MyApp.getInstance().resources.getString(R.string.lbl_date_of_birth)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDate: String? = MyApp.getInstance().resources.getString(R.string.lbl_25_january_1990)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCardType5: String? = MyApp.getInstance().resources.getString(R.string.lbl_present_address)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCardType6: String? =
      MyApp.getInstance().resources.getString(R.string.msg_permanent_address)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCardType7: String? = MyApp.getInstance().resources.getString(R.string.lbl_city)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCardType8: String? = MyApp.getInstance().resources.getString(R.string.lbl_postal_code)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZipcode: String? = MyApp.getInstance().resources.getString(R.string.lbl_45962)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCardType9: String? = MyApp.getInstance().resources.getString(R.string.lbl_country)
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
  var etPasswordValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etAddressValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etAddress1Value: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etCityValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etCountryValue: String? = null
)
