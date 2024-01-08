package com.housitbuyrentsellproperty.app.modules.messageslist.ui

import androidx.activity.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityMessagesListBinding
import com.housitbuyrentsellproperty.app.modules.messageslist.`data`.viewmodel.MessagesListVM
import kotlin.String
import kotlin.Unit

class MessagesListActivity :
    BaseActivity<ActivityMessagesListBinding>(R.layout.activity_messages_list) {
  private val viewModel: MessagesListVM by viewModels<MessagesListVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.messagesListVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "MESSAGES_LIST_ACTIVITY"

  }
}
