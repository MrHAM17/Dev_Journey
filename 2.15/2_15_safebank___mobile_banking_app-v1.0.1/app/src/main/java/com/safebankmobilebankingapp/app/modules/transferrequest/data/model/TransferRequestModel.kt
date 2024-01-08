package com.safebankmobilebankingapp.app.modules.transferrequest.`data`.model

import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.di.MyApp
import kotlin.String

data class TransferRequestModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTransfer: String? = MyApp.getInstance().resources.getString(R.string.msg_transfer_request)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtContactPeople: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_contact_people)

)
