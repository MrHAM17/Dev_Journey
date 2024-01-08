package com.shopsieecommerceapp.app.modules.profileaddressdetails.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class ProfileAddressDetailsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtAddressCounter: String? = MyApp.getInstance().resources.getString(R.string.lbl_address_1)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAddressCounter1: String? = MyApp.getInstance().resources.getString(R.string.lbl_address_2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCity: String? = MyApp.getInstance().resources.getString(R.string.lbl_city)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPostalCode: String? = MyApp.getInstance().resources.getString(R.string.lbl_postal_code)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPhoneNumber: String? = MyApp.getInstance().resources.getString(R.string.lbl_phone_number)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCurrentAddresses: String? =
      MyApp.getInstance().resources.getString(R.string.msg_current_addresses)
  ,
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
  var etPostalCodeValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etPhoneNumberValue: String? = null
)
