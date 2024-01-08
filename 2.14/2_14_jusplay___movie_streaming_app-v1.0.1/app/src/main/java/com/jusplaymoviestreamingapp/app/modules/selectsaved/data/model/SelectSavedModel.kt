package com.jusplaymoviestreamingapp.app.modules.selectsaved.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class SelectSavedModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtMarkAll: String? = MyApp.getInstance().resources.getString(R.string.lbl_mark_all)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSaved: String? = MyApp.getInstance().resources.getString(R.string.lbl_saved)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDelete: String? = MyApp.getInstance().resources.getString(R.string.lbl_delete)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHome: String? = MyApp.getInstance().resources.getString(R.string.lbl_home)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSearch: String? = MyApp.getInstance().resources.getString(R.string.lbl_search)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSaved1: String? = MyApp.getInstance().resources.getString(R.string.lbl_saved)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDownloads: String? = MyApp.getInstance().resources.getString(R.string.lbl_downloads)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMe: String? = MyApp.getInstance().resources.getString(R.string.lbl_me)

)
