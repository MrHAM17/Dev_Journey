package com.jusplaymoviestreamingapp.app.modules.notfound.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class NotFoundModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtOpsss: String? = MyApp.getInstance().resources.getString(R.string.lbl_opsss)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWhatYouAreLooking: String? =
      MyApp.getInstance().resources.getString(R.string.msg_what_you_are_looking)
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
  var txtSaved: String? = MyApp.getInstance().resources.getString(R.string.lbl_saved)
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
