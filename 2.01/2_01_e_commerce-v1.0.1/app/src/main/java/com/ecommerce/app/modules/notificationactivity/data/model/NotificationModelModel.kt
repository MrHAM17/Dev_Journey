package com.ecommerce.app.modules.notificationactivity.`data`.model

import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.di.MyApp
import kotlin.String

data class NotificationModelModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtActivity: String? = MyApp.getInstance().resources.getString(R.string.lbl_activity)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTransactionNike: String? =
      MyApp.getInstance().resources.getString(R.string.msg_transaction_nike)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_culpa_cillum_consectetur)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.msg_april_30_2014_1_01)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTransactionNike1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_transaction_nike2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_culpa_cillum_consectetur)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime1: String? = MyApp.getInstance().resources.getString(R.string.msg_april_30_2014_1_01)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTransactionNike2: String? =
      MyApp.getInstance().resources.getString(R.string.msg_transaction_nike3)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription2: String? =
      MyApp.getInstance().resources.getString(R.string.msg_culpa_cillum_consectetur)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime2: String? = MyApp.getInstance().resources.getString(R.string.msg_april_30_2014_1_01)

)
