package com.hiredjobsearch.app.modules.confirmation.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class ConfirmationModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_i_agree_to_the_terms)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelMedium: String? = MyApp.getInstance().resources.getString(R.string.lbl_disgree)

)
