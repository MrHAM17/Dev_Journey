package com.hiredjobsearch.app.modules.jobtype.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class JobTypeModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtChooseJobType: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_choose_job_type)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAreYouLooking: String? =
      MyApp.getInstance().resources.getString(R.string.msg_are_you_looking)

)
