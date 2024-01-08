package com.helthiotelehealth.app.modules.articles.`data`.model

import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.di.MyApp
import kotlin.String

data class EightynineRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtCovidNineteen: String? = MyApp.getInstance().resources.getString(R.string.lbl_covid_19)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtComparingtheAstraZen: String? =
      MyApp.getInstance().resources.getString(R.string.msg_comparing_the_astrazeneca)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtJun: String? = MyApp.getInstance().resources.getString(R.string.lbl_jun_12_2021)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_6_min_read)

)
