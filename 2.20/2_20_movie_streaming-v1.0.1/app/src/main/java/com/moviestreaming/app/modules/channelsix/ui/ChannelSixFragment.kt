package com.moviestreaming.app.modules.channelsix.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.base.BaseFragment
import com.moviestreaming.app.databinding.FragmentChannelSixBinding
import com.moviestreaming.app.modules.channelsix.`data`.model.ChannelsixRowModel
import com.moviestreaming.app.modules.channelsix.`data`.viewmodel.ChannelSixVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ChannelSixFragment : BaseFragment<FragmentChannelSixBinding>(R.layout.fragment_channel_six) {
  private val viewModel: ChannelSixVM by viewModels<ChannelSixVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val channelSixAdapter = ChannelSixAdapter(viewModel.channelSixList.value?:mutableListOf())
    binding.recyclerChannelSix.adapter = channelSixAdapter
    channelSixAdapter.setOnItemClickListener(
    object : ChannelSixAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ChannelsixRowModel) {
        onClickRecyclerChannelSix(view, position, item)
      }
    }
    )
    viewModel.channelSixList.observe(requireActivity()) {
      channelSixAdapter.updateData(it)
    }
    binding.channelSixVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerChannelSix(
    view: View,
    position: Int,
    item: ChannelsixRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "CHANNEL_SIX_FRAGMENT"


    fun getInstance(bundle: Bundle?): ChannelSixFragment {
      val fragment = ChannelSixFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
