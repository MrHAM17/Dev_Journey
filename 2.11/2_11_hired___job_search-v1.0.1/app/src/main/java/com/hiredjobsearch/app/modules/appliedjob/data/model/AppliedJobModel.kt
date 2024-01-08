package com.hiredjobsearch.app.modules.appliedjob.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class AppliedJobModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtJobDescription: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_job_description)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lorem_ipsum_dolor3)

)
