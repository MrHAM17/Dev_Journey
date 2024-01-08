package com.hiredjobsearch.app.modules.notificationsgeneral.`data`.model

import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.di.MyApp
import kotlin.String

data class NotificationsgeneralRowModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtJuniorUIDesigner: String? =
      MyApp.getInstance().resources.getString(R.string.msg_junior_ui_designer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtShopeeSg: String? = MyApp.getInstance().resources.getString(R.string.lbl_shopee_sg)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_32_min_ago)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLoremIpsumDolor: String? =
      MyApp.getInstance().resources.getString(R.string.msg_lorem_ipsum_dolor7)

)
