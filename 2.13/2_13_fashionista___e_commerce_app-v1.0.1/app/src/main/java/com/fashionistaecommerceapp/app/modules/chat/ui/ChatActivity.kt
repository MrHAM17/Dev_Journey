package com.fashionistaecommerceapp.app.modules.chat.ui

import androidx.activity.viewModels
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.base.BaseActivity
import com.fashionistaecommerceapp.app.databinding.ActivityChatBinding
import com.fashionistaecommerceapp.app.modules.chat.`data`.viewmodel.ChatVM
import kotlin.String
import kotlin.Unit

class ChatActivity : BaseActivity<ActivityChatBinding>(R.layout.activity_chat) {
  private val viewModel: ChatVM by viewModels<ChatVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.chatVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowDown.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "CHAT_ACTIVITY"

  }
}
