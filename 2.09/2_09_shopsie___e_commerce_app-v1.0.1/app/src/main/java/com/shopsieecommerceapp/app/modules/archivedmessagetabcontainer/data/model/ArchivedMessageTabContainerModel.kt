package com.shopsieecommerceapp.app.modules.archivedmessagetabcontainer.`data`.model

import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.di.MyApp
import kotlin.String

data class ArchivedMessageTabContainerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtScreenTitle: String? = MyApp.getInstance().resources.getString(R.string.lbl_home)

)
