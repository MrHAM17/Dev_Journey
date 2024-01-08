package com.safebankmobilebankingapp.app.modules.confirmation.`data`.model

import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.di.MyApp
import kotlin.String

data class ConfirmationModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtConfirmation: String? = MyApp.getInstance().resources.getString(R.string.lbl_confirmation)

)
