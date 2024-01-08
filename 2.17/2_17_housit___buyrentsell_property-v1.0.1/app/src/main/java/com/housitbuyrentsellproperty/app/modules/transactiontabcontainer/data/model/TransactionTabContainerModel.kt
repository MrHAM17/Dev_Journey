package com.housitbuyrentsellproperty.app.modules.transactiontabcontainer.`data`.model

import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.di.MyApp
import kotlin.String

data class TransactionTabContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtPageTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_profile)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJonathanAnderson: String? =
      MyApp.getInstance().resources.getString(R.string.msg_jonathan_anderson)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEmail: String? = MyApp.getInstance().resources.getString(R.string.msg_jonathan_email_com)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl_30)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtListings: String? = MyApp.getInstance().resources.getString(R.string.lbl_listings2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText1: String? = MyApp.getInstance().resources.getString(R.string.lbl_12)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSold: String? = MyApp.getInstance().resources.getString(R.string.lbl_sold)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText2: String? = MyApp.getInstance().resources.getString(R.string.lbl_28)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtReviews: String? = MyApp.getInstance().resources.getString(R.string.lbl_reviews)

)
