package com.shopsieecommerceapp.app.modules.profileaddressdetails.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class ProfileaddressdetailsRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtHomeAddress: String? = MyApp.getInstance().resources.getString(R.string.lbl_home_address)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEdit: String? = MyApp.getInstance().resources.getString(R.string.lbl_edit)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAddressCounter1: String? = MyApp.getInstance().resources.getString(R.string.lbl_address_1)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAmoySt1: String? = MyApp.getInstance().resources.getString(R.string.lbl_amoy_st_592)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAddressCounter2: String? = MyApp.getInstance().resources.getString(R.string.lbl_address_2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAmoySt2: String? = MyApp.getInstance().resources.getString(R.string.lbl_amoy_st_592)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCity: String? = MyApp.getInstance().resources.getString(R.string.lbl_city)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLosAngeles: String? = MyApp.getInstance().resources.getString(R.string.lbl_los_angeles)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPostalCode: String? = MyApp.getInstance().resources.getString(R.string.lbl_postal_code2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZero: String? = MyApp.getInstance().resources.getString(R.string.lbl_0000000)

)
