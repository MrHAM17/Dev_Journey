package com.healthcare.app.modules.message.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.healthcare.app.R
import com.healthcare.app.appcomponents.base.BaseFragment
import com.healthcare.app.databinding.FragmentMessageBinding
import com.healthcare.app.modules.chat.ui.ChatActivity
import com.healthcare.app.modules.message.`data`.model.ChatRowModel
import com.healthcare.app.modules.message.`data`.viewmodel.MessageVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class MessageFragment : BaseFragment<FragmentMessageBinding>(R.layout.fragment_message) {
  private val viewModel: MessageVM by viewModels<MessageVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val chatAdapter = ChatAdapter(viewModel.chatList.value?:mutableListOf())
    binding.recyclerChat.adapter = chatAdapter
    chatAdapter.setOnItemClickListener(
    object : ChatAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ChatRowModel) {
        onClickRecyclerChat(view, position, item)
      }
    }
    )
    viewModel.chatList.observe(requireActivity()) {
      chatAdapter.updateData(it)
    }
    binding.messageVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerChat(
    view: View,
    position: Int,
    item: ChatRowModel
  ): Unit {
    when(view.id) {
      R.id.linearChat ->  {
        val destIntent = ChatActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
    }
  }

  companion object {
    const val TAG: String = "MESSAGE_FRAGMENT"

  }
}
