package com.shopsieecommerceapp.app.modules.userprofile.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class UserProfileModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtName: String? = MyApp.getInstance().resources.getString(R.string.lbl_katherine_cole)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_5_min_ago)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle: String? = MyApp.getInstance().resources.getString(R.string.msg_the_best_fashion)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCopy: String? = MyApp.getInstance().resources.getString(R.string.msg_if_you_are_looking)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel: String? = MyApp.getInstance().resources.getString(R.string.lbl_326)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel1: String? = MyApp.getInstance().resources.getString(R.string.lbl_148)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLabel2: String? = MyApp.getInstance().resources.getString(R.string.lbl_share)

)
