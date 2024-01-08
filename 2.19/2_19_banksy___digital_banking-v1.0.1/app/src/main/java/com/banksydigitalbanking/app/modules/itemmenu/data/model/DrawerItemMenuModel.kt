package com.banksydigitalbanking.app.modules.itemmenu.`data`.model

import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import kotlin.String

data class DrawerItemMenuModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtSuzaneJobs: String? = MyApp.getInstance().resources.getString(R.string.lbl_suzane_jobs)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEmail: String? = MyApp.getInstance().resources.getString(R.string.lbl_user_gmail_com)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtEditProfile: String? = MyApp.getInstance().resources.getString(R.string.lbl_edit_profile)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTransactionHistory: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_history_8)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNotificationsSettin: String? =
      MyApp.getInstance().resources.getString(R.string.msg_notifications_settings)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFavoriteOutfits: String? = MyApp.getInstance().resources.getString(R.string.lbl_share_app)

)
