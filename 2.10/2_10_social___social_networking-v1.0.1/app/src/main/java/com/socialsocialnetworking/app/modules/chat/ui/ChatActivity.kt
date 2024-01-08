package com.socialsocialnetworking.app.modules.chat.ui

import androidx.activity.viewModels
import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.base.BaseActivity
import com.socialsocialnetworking.app.databinding.ActivityChatBinding
import com.socialsocialnetworking.app.modules.chat.`data`.viewmodel.ChatVM
import kotlin.String
import kotlin.Unit

class ChatActivity : BaseActivity<ActivityChatBinding>(R.layout.activity_chat) {
  private val viewModel: ChatVM by viewModels<ChatVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.chatVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageClose.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "CHAT_ACTIVITY"

  }
}
