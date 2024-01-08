package com.shopsieecommerceapp.app.modules.userprofiletabcontainer.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class UserProfileTabContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtEdwardFord: String? = MyApp.getInstance().resources.getString(R.string.lbl_edward_ford)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFullname: String? = MyApp.getInstance().resources.getString(R.string.lbl_edwardford2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFiveHundredEighteen: String? = MyApp.getInstance().resources.getString(R.string.lbl_518)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPosts: String? = MyApp.getInstance().resources.getString(R.string.lbl_posts)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtK: String? = MyApp.getInstance().resources.getString(R.string.lbl_22k)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFriends: String? = MyApp.getInstance().resources.getString(R.string.lbl_friends)

)
