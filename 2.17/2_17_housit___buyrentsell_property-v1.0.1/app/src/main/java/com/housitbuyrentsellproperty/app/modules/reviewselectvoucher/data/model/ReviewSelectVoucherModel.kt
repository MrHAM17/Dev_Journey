package com.housitbuyrentsellproperty.app.modules.reviewselectvoucher.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class ReviewSelectVoucherModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtAddVoucher: String? = MyApp.getInstance().resources.getString(R.string.lbl_add_voucher)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtYourAvailablevouchers: String? =
      MyApp.getInstance().resources.getString(R.string.msg_your_available_vouchers)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHLWNForty: String? = MyApp.getInstance().resources.getString(R.string.lbl_hlwn40)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtClicktousethisvoucher: String? =
      MyApp.getInstance().resources.getString(R.string.msg_click_to_use_this)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHGJCTwenty: String? = MyApp.getInstance().resources.getString(R.string.lbl_hgjc20)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtClicktousethisvoucher1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_click_to_use_this)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etTelevisionValue: String? = null
)
