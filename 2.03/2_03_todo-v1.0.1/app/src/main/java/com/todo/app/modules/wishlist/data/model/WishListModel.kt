package com.todo.app.modules.wishlist.`data`.model

import com.todo.app.R
import com.todo.app.appcomponents.di.MyApp
import kotlin.String

data class WishListModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtMakeAWishList: String? =
      MyApp.getInstance().resources.getString(R.string.msg_make_a_wish_list)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMakeYourJobEasier: String? =
      MyApp.getInstance().resources.getString(R.string.msg_make_your_job_easier)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTaskTodo: String? = MyApp.getInstance().resources.getString(R.string.lbl_task_todo)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtCreateActionMobile: String? =
      MyApp.getInstance().resources.getString(R.string.msg_create_action_mobile)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDate: String? = MyApp.getInstance().resources.getString(R.string.lbl_date)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTtMmYy: String? = MyApp.getInstance().resources.getString(R.string.lbl_tt_mm_yy)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAttachments: String? = MyApp.getInstance().resources.getString(R.string.lbl_attachments)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var etFilesizeValue: String? = null
)
