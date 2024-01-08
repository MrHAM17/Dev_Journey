package com.hiredjobsearch.app.modules.jobdetailstabcontainer.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class JobDetailsTabContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtJobDetails: String? = MyApp.getInstance().resources.getString(R.string.lbl_job_details)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeniorUIUXDesigner: String? =
      MyApp.getInstance().resources.getString(R.string.msg_senior_ui_ux_designer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSmallLabelRegular: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_shopee_sg)

)
