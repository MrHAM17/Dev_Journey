package com.vertexrealestateapp.app.modules.message.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseFragment
import com.vertexrealestateapp.app.databinding.FragmentMessageBinding
import com.vertexrealestateapp.app.modules.message.`data`.model.MessagesRowModel
import com.vertexrealestateapp.app.modules.message.`data`.viewmodel.MessageVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class MessageFragment : BaseFragment<FragmentMessageBinding>(R.layout.fragment_message) {
  private val viewModel: MessageVM by viewModels<MessageVM>()

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
    binding.messageVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      requireActivity().onBackPressed()
    }
  }

  fun onClickRecyclerMessages(
    view: View,
    position: Int,
    item: MessagesRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "MESSAGE_FRAGMENT"


    fun getInstance(bundle: Bundle?): MessageFragment {
      val fragment = MessageFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
