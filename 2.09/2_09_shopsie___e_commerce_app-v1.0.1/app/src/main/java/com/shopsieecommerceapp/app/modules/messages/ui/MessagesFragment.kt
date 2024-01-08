package com.shopsieecommerceapp.app.modules.messages.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseFragment
import com.shopsieecommerceapp.app.databinding.FragmentMessagesBinding
import com.shopsieecommerceapp.app.modules.chat.ui.ChatBottomsheet
import com.shopsieecommerceapp.app.modules.messages.`data`.model.MessagesRowModel
import com.shopsieecommerceapp.app.modules.messages.`data`.viewmodel.MessagesVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class MessagesFragment : BaseFragment<FragmentMessagesBinding>(R.layout.fragment_messages) {
  private val viewModel: MessagesVM by viewModels<MessagesVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val messagesAdapter = MessagesAdapter(viewModel.messagesList.value?:mutableListOf())
    binding.recyclerMessages.adapter = messagesAdapter
    messagesAdapter.setOnItemClickListener(
    object : MessagesAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : MessagesRowModel) {
        onClickRecyclerMessages(view, position, item)
      }
    }
    )
    viewModel.messagesList.observe(requireActivity()) {
      messagesAdapter.updateData(it)
    }
    binding.messagesVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerMessages(
    view: View,
    position: Int,
    item: MessagesRowModel
  ): Unit {
    when(view.id) {
      R.id.linearMessage ->  {
        val destFragment = ChatBottomsheet.getInstance(null)
        destFragment.show(requireActivity().supportFragmentManager, ChatBottomsheet.TAG)
      }
    }
  }

  companion object {
    const val TAG: String = "MESSAGES_FRAGMENT"

  }
}
