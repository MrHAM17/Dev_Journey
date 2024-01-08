package com.hiredjobsearch.app.modules.applyjobpopup.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class ApplyJobPopupModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTypeThirtyTwo: String? = MyApp.getInstance().resources.getString(R.string.lbl_success)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtYourApplication: String? =
      MyApp.getInstance().resources.getString(R.string.msg_your_application)

)
