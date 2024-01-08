package com.shopsieecommerceapp.app.modules.archivedmessage.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseFragment
import com.shopsieecommerceapp.app.databinding.FragmentArchivedMessageBinding
import com.shopsieecommerceapp.app.modules.archivedmessage.`data`.model.ArchivedmessageRowModel
import com.shopsieecommerceapp.app.modules.archivedmessage.`data`.viewmodel.ArchivedMessageVM
import com.shopsieecommerceapp.app.modules.groupchat.ui.GroupChatBottomsheet
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ArchivedMessageFragment :
    BaseFragment<FragmentArchivedMessageBinding>(R.layout.fragment_archived_message) {
  private val viewModel: ArchivedMessageVM by viewModels<ArchivedMessageVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val archivedMessageAdapter =
    ArchivedMessageAdapter(viewModel.archivedMessageList.value?:mutableListOf())
    binding.recyclerArchivedMessage.adapter = archivedMessageAdapter
    archivedMessageAdapter.setOnItemClickListener(
    object : ArchivedMessageAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ArchivedmessageRowModel) {
        onClickRecyclerArchivedMessage(view, position, item)
      }
    }
    )
    viewModel.archivedMessageList.observe(requireActivity()) {
      archivedMessageAdapter.updateData(it)
    }
    binding.archivedMessageVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerArchivedMessage(
    view: View,
    position: Int,
    item: ArchivedmessageRowModel
  ): Unit {
    when(view.id) {
      R.id.linearMessage ->  {
        val destFragment = GroupChatBottomsheet.getInstance(null)
        destFragment.show(requireActivity().supportFragmentManager, GroupChatBottomsheet.TAG)
      }
    }
  }

  companion object {
    const val TAG: String = "ARCHIVED_MESSAGE_FRAGMENT"

  }
}
