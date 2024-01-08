package com.jusplaymoviestreamingapp.app.modules.help.`data`.model

import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import kotlin.String

data class HelpModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtComedy: String? = MyApp.getInstance().resources.getString(R.string.lbl_help)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTopAnswers: String? = MyApp.getInstance().resources.getString(R.string.lbl_top_answers)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHowtocontactcustomersupportmov: String? =
      MyApp.getInstance().resources.getString(R.string.msg_how_to_contact_customer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHowToUnsubscribe: String? =
      MyApp.getInstance().resources.getString(R.string.msg_how_to_unsubscribe)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHowToSubscribe: String? =
      MyApp.getInstance().resources.getString(R.string.msg_how_to_subscribe)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCantwatchmovistart: String? =
      MyApp.getInstance().resources.getString(R.string.msg_can_t_watch_movistart)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWhatismovistart: String? =
      MyApp.getInstance().resources.getString(R.string.msg_what_is_movistart)

)
