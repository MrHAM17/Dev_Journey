package com.ecommerce.app.modules.addaddress.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class AddAddressModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtAddAddress: String? = MyApp.getInstance().resources.getString(R.string.lbl_add_address)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCountryOrRegion: String? =
      MyApp.getInstance().resources.getString(R.string.msg_country_or_region)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFirstName: String? = MyApp.getInstance().resources.getString(R.string.lbl_first_name)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLastName: String? = MyApp.getInstance().resources.getString(R.string.lbl_last_name)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtStreetAddress: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_street_address)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtStreetAddressTwo: String? =
      MyApp.getInstance().resources.getString(R.string.msg_street_address_2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCity: String? = MyApp.getInstance().resources.getString(R.string.lbl_city)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtStateProvinceRegion: String? =
      MyApp.getInstance().resources.getString(R.string.msg_state_province_region)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZipCode: String? = MyApp.getInstance().resources.getString(R.string.lbl_zip_code)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPhoneNumber: String? = MyApp.getInstance().resources.getString(R.string.lbl_phone_number)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etCountryValue: String? = null,
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
  var etStreetaddressValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etStreetaddress1Value: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etCityValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etOldPasswordValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etZipcodeValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etPhoneNumberValue: String? = null
)
