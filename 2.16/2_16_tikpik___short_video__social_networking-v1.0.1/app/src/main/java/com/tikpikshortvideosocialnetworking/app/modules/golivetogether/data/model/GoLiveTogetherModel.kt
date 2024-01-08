package com.tikpikshortvideosocialnetworking.app.modules.golivetogether.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class GoLiveTogetherModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtGoLIVETogether: String? =
      MyApp.getInstance().resources.getString(R.string.msg_go_live_together)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtGuestRequests: String? =
      MyApp.getInstance().resources.getString(R.string.msg_532_guest_requests)

)
