package com.tikpikshortvideosocialnetworking.app.modules.walkthroughthree.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class WalkthroughThreeModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtGoLiveWithYour: String? =
      MyApp.getInstance().resources.getString(R.string.msg_go_live_with_your)

)
