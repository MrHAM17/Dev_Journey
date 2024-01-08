package com.tunecastmusicstreamingpodcastapp.app.modules.subscribe.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class SubscribeModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSubscribeToPremium: String? =
      MyApp.getInstance().resources.getString(R.string.msg_subscribe_to_premium)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEnjoyListening: String? =
      MyApp.getInstance().resources.getString(R.string.msg_enjoy_listening2)

)
