package com.hiredjobsearch.app.modules.applyjob.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class ApplyJobModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtJobDetails: String? = MyApp.getInstance().resources.getString(R.string.lbl_apply_job)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelSemi: String? = MyApp.getInstance().resources.getString(R.string.lbl_full_name)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelSemi1: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_email_address)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelSemi2: String? = MyApp.getInstance().resources.getString(R.string.lbl_upload_cv)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtUploadFile: String? = MyApp.getInstance().resources.getString(R.string.lbl_upload_file)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMediumLabelSemi3: String? =
      MyApp.getInstance().resources.getString(R.string.msg_website_blog_or)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etFullNameValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etEmailValue: String? = null,
  /**
   * TODO Replace with dynamic value
   */
  var etFrameOneValue: String? = null
)
