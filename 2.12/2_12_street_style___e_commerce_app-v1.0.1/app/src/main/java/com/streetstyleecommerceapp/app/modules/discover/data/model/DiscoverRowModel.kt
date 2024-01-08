package com.streetstyleecommerceapp.app.modules.discover.`data`.model

import com.streetstyleecommerceapp.app.R
import com.streetstyleecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class DiscoverRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtShirtSleeve: String? = MyApp.getInstance().resources.getString(R.string.lbl_shirt_sleeve)

)
