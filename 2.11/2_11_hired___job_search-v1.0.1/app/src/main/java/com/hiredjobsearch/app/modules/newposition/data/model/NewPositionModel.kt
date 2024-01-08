package com.hiredjobsearch.app.modules.newposition.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class NewPositionModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtAddNewPosition: String? =
      MyApp.getInstance().resources.getString(R.string.msg_add_new_position)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelSemi: String? = MyApp.getInstance().resources.getString(R.string.lbl_title)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelSemi1: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_employment_type)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelSemi2: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_company_name)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelSemi3: String? = MyApp.getInstance().resources.getString(R.string.lbl_location2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelSemi4: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_start_date)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSmallLabelRegular: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_select_date)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelSemi5: String? = MyApp.getInstance().resources.getString(R.string.lbl_end_date)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSmallLabelRegular1: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_select_date)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelSemi6: String? =
      MyApp.getInstance().resources.getString(R.string.msg_job_role_description)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etFrameOneValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etNameValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etLocationValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etFrameOne1Value: String? = null
)
