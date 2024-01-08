package com.hiredjobsearch.app.modules.filter.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class FilterModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtFilter: String? = MyApp.getInstance().resources.getString(R.string.lbl_filter)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelMedium: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_reset_filters)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCategories: String? = MyApp.getInstance().resources.getString(R.string.lbl_categories)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSalaries: String? = MyApp.getInstance().resources.getString(R.string.lbl_salaries)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_6_000_month)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice1: String? = MyApp.getInstance().resources.getString(R.string.lbl_560)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice2: String? = MyApp.getInstance().resources.getString(R.string.lbl_12_000)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJobs: String? = MyApp.getInstance().resources.getString(R.string.lbl_jobs)

)
