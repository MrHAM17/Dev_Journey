package com.hiredjobsearch.app.modules.jobtype.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class JobtypeRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFindAJob: String? = MyApp.getInstance().resources.getString(R.string.lbl_find_a_job)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtItSEasyToFind: String? =
      MyApp.getInstance().resources.getString(R.string.msg_it_s_easy_to_find)

)
