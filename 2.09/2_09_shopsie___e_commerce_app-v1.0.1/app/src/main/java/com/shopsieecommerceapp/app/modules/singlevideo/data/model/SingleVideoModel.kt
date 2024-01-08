package com.shopsieecommerceapp.app.modules.singlevideo.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class SingleVideoModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_01_23)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime1: String? = MyApp.getInstance().resources.getString(R.string.lbl_05_46)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTitle: String? =
      MyApp.getInstance().resources.getString(R.string.msg_tropical_fresh_tourism)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtName: String? = MyApp.getInstance().resources.getString(R.string.lbl_edward_ford)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime2: String? = MyApp.getInstance().resources.getString(R.string.lbl_5_min_ago)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? = MyApp.getInstance().resources.getString(R.string.msg_cancun_is_back)
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
