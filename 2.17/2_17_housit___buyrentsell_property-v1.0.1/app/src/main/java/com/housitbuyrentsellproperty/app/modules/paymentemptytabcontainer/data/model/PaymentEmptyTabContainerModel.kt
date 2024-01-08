package com.housitbuyrentsellproperty.app.modules.paymentemptytabcontainer.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class PaymentEmptyTabContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle: String? = MyApp.getInstance().resources.getString(R.string.msg_add_your_payment)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_you_can_edit_this)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtYourname: String? = MyApp.getInstance().resources.getString(R.string.lbl_your_name)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.msg)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBalance: String? = MyApp.getInstance().resources.getString(R.string.lbl_balance)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl5)

)
