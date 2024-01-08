package com.socialsocialnetworking.app.modules.messages.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.base.BaseFragment
import com.socialsocialnetworking.app.databinding.FragmentMessagesBinding
import com.socialsocialnetworking.app.modules.messages.`data`.model.MessageslistRowModel
import com.socialsocialnetworking.app.modules.messages.`data`.model.Stories1RowModel
import com.socialsocialnetworking.app.modules.messages.`data`.viewmodel.MessagesVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class MessagesFragment : BaseFragment<FragmentMessagesBinding>(R.layout.fragment_messages) {
  private val viewModel: MessagesVM by viewModels<MessagesVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val storiesAdapter = StoriesAdapter(viewModel.storiesList.value?:mutableListOf())
    binding.recyclerStories.adapter = storiesAdapter
    storiesAdapter.setOnItemClickListener(
    object : StoriesAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Stories1RowModel) {
        onClickRecyclerStories(view, position, item)
      }
    }
    )
    viewModel.storiesList.observe(requireActivity()) {
      storiesAdapter.updateData(it)
    }
    val messagesListAdapter =
    MessagesListAdapter(viewModel.messagesListList.value?:mutableListOf())
    binding.recyclerMessagesList.adapter = messagesListAdapter
    messagesListAdapter.setOnItemClickListener(
    object : MessagesListAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : MessageslistRowModel) {
        onClickRecyclerMessagesList(view, position, item)
      }
    }
    )
    viewModel.messagesListList.observe(requireActivity()) {
      messagesListAdapter.updateData(it)
    }
    binding.messagesVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowBack.setOnClickListener {
      requireActivity().onBackPressed()
    }
  }

  fun onClickRecyclerStories(
    view: View,
    position: Int,
    item: Stories1RowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerMessagesList(
    view: View,
    position: Int,
    item: MessageslistRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "MESSAGES_FRAGMENT"


    fun getInstance(bundle: Bundle?): MessagesFragment {
      val fragment = MessagesFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
