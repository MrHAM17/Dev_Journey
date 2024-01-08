package com.firstbankdigitalbanking.app.modules.getstarted.`data`.model

import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class GetStartedModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtLetsGetStarted: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lets_get_started)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFindTheRightAnd: String? =
      MyApp.getInstance().resources.getString(R.string.msg_find_the_right_and)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtOrUseInstantSign: String? =
      MyApp.getInstance().resources.getString(R.string.msg_or_use_instant_sign)

)
