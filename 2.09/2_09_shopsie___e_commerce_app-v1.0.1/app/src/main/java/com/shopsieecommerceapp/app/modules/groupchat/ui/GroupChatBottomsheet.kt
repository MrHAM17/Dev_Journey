package com.shopsieecommerceapp.app.modules.groupchat.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.shopsieecommerceapp.app.databinding.BottomsheetGroupChatBinding
import com.shopsieecommerceapp.app.modules.groupchat.`data`.viewmodel.GroupChatVM
import kotlin.String
import kotlin.Unit

class GroupChatBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetGroupChatBinding>(R.layout.bottomsheet_group_chat) {
  private val viewModel: GroupChatVM by viewModels<GroupChatVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.groupChatVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "GROUP_CHAT_BOTTOMSHEET"


    fun getInstance(bundle: Bundle?): GroupChatBottomsheet {
      val fragment = GroupChatBottomsheet()
      fragment.arguments = bundle
      return fragment
    }
  }
}
