package com.hiredjobsearch.app.modules.addneweducation.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class AddNewEducationModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtAddNewEducation: String? =
      MyApp.getInstance().resources.getString(R.string.msg_add_new_education)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelSemi: String? = MyApp.getInstance().resources.getString(R.string.lbl_school)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelSemi1: String? = MyApp.getInstance().resources.getString(R.string.lbl_degree)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelSemi2: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_field_of_study)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelSemi3: String? =
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
  var txtMediumLabelSemi4: String? = MyApp.getInstance().resources.getString(R.string.lbl_end_date)
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
  var txtMediumLabelSemi5: String? = MyApp.getInstance().resources.getString(R.string.lbl_grade)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelSemi6: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_description)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etFrameOneValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etFrameOne1Value: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etFrameOne2Value: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etFrameOne3Value: String? = null
)
