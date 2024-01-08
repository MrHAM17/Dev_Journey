package com.helthiotelehealth.app.modules.messagehistory.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.base.BaseFragment
import com.helthiotelehealth.app.databinding.FragmentMessageHistoryBinding
import com.helthiotelehealth.app.modules.messagehistory.`data`.model.MessagehistoryRowModel
import com.helthiotelehealth.app.modules.messagehistory.`data`.viewmodel.MessageHistoryVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class MessageHistoryFragment :
    BaseFragment<FragmentMessageHistoryBinding>(R.layout.fragment_message_history) {
  private val viewModel: MessageHistoryVM by viewModels<MessageHistoryVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val messageHistoryAdapter =
    MessageHistoryAdapter(viewModel.messageHistoryList.value?:mutableListOf())
    binding.recyclerMessageHistory.adapter = messageHistoryAdapter
    messageHistoryAdapter.setOnItemClickListener(
    object : MessageHistoryAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : MessagehistoryRowModel) {
        onClickRecyclerMessageHistory(view, position, item)
      }
    }
    )
    viewModel.messageHistoryList.observe(requireActivity()) {
      messageHistoryAdapter.updateData(it)
    }
    binding.messageHistoryVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerMessageHistory(
    view: View,
    position: Int,
    item: MessagehistoryRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "MESSAGE_HISTORY_FRAGMENT"

  }
}
