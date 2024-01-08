package com.shopsieecommerceapp.app.modules.chat.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.shopsieecommerceapp.app.databinding.BottomsheetChatBinding
import com.shopsieecommerceapp.app.modules.chat.`data`.viewmodel.ChatVM
import kotlin.String
import kotlin.Unit

class ChatBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetChatBinding>(R.layout.bottomsheet_chat) {
  private val viewModel: ChatVM by viewModels<ChatVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.chatVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "CHAT_BOTTOMSHEET"


    fun getInstance(bundle: Bundle?): ChatBottomsheet {
      val fragment = ChatBottomsheet()
      fragment.arguments = bundle
      return fragment
    }
  }
}
