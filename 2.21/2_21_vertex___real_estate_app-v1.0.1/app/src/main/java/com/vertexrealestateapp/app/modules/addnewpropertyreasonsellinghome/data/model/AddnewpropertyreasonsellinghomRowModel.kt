package com.vertexrealestateapp.app.modules.addnewpropertyreasonsellinghome.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class AddnewpropertyreasonsellinghomRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtUpgradingMyHome: String? =
      MyApp.getInstance().resources.getString(R.string.msg_upgrading_my_home)

)
