package com.safebankmobilebankingapp.app.modules.transfertabcontainer.`data`.model

import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.di.MyApp
import kotlin.String

data class TransferTabContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTransfer: String? = MyApp.getInstance().resources.getString(R.string.lbl_transfer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAlexDordan: String? = MyApp.getInstance().resources.getString(R.string.lbl_alex_dordan)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWebDeveloper: String? = MyApp.getInstance().resources.getString(R.string.lbl_web_developer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZipcode: String? = MyApp.getInstance().resources.getString(R.string.lbl_4023)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtZipcode1: String? = MyApp.getInstance().resources.getString(R.string.lbl_5534)

)
