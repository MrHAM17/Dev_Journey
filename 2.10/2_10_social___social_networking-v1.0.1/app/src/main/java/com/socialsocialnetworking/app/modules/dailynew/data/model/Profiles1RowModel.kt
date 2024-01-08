package com.socialsocialnetworking.app.modules.dailynew.`data`.model

import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class Profiles1RowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtAgnessMonica: String? = MyApp.getInstance().resources.getString(R.string.lbl_agness_monica)

)
