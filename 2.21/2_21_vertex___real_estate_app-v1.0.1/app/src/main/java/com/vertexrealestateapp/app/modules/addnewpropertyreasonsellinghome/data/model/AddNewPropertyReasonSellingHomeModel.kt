package com.vertexrealestateapp.app.modules.addnewpropertyreasonsellinghome.`data`.model

import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import kotlin.String

data class AddNewPropertyReasonSellingHomeModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNotification: String? =
      MyApp.getInstance().resources.getString(R.string.msg_add_new_property)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtReasonSellingHome: String? =
      MyApp.getInstance().resources.getString(R.string.msg_reason_selling_home)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWhyAreYouSelling: String? =
      MyApp.getInstance().resources.getString(R.string.msg_why_are_you_selling)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPleaseEnterYour: String? =
      MyApp.getInstance().resources.getString(R.string.msg_please_enter_your)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEGIMHelping: String? =
      MyApp.getInstance().resources.getString(R.string.msg_e_g_i_m_helping)

)
