package com.hiredjobsearch.app.modules.home.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class HomeModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtHiWelcomeBack: String? =
      MyApp.getInstance().resources.getString(R.string.msg_hi_welcome_back)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFindYourDream: String? =
      MyApp.getInstance().resources.getString(R.string.msg_find_your_dream2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelSemi: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_recommendation)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelSemi1: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_recent_jobs)

)
