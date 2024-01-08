package com.jusplaymoviestreamingapp.app.modules.about.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class AboutRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtMenaMassoud: String? = MyApp.getInstance().resources.getString(R.string.lbl_mena_massoud)

)
