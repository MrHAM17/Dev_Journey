package com.hiredjobsearch.app.modules.messageaction.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class MessageActionModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtJobDetails: String? = MyApp.getInstance().resources.getString(R.string.lbl_message)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTypeTwelve: String? = MyApp.getInstance().resources.getString(R.string.lbl_home)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTypeTwelve1: String? = MyApp.getInstance().resources.getString(R.string.lbl_message)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTypeTwelve2: String? = MyApp.getInstance().resources.getString(R.string.lbl_saved)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTypeTwelve3: String? = MyApp.getInstance().resources.getString(R.string.lbl_profile)

)
