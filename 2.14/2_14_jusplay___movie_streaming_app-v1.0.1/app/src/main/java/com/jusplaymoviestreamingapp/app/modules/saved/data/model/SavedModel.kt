package com.jusplaymoviestreamingapp.app.modules.saved.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class SavedModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSaved: String? = MyApp.getInstance().resources.getString(R.string.lbl_saved)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDelete: String? = MyApp.getInstance().resources.getString(R.string.lbl_delete)

)
