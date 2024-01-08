package com.hiredjobsearch.app.modules.jobdetailstabcontainer.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class JobdetailstabcontainerRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSalary: String? = MyApp.getInstance().resources.getString(R.string.lbl_salary)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_6k_11k)

)
