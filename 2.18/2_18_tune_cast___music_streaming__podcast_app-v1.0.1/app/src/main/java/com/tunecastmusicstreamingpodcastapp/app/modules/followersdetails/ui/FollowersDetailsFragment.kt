package com.tunecastmusicstreamingpodcastapp.app.modules.followersdetails.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.FragmentFollowersDetailsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.followersdetails.`data`.model.Following1RowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.followersdetails.`data`.model.NinetyfiveRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.followersdetails.`data`.viewmodel.FollowersDetailsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class FollowersDetailsFragment :
    BaseFragment<FragmentFollowersDetailsBinding>(R.layout.fragment_followers_details) {
  private val viewModel: FollowersDetailsVM by viewModels<FollowersDetailsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val ninetyFiveAdapter = NinetyFiveAdapter(viewModel.ninetyFiveList.value?:mutableListOf())
    binding.recyclerNinetyFive.adapter = ninetyFiveAdapter
    ninetyFiveAdapter.setOnItemClickListener(
    object : NinetyFiveAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : NinetyfiveRowModel) {
        onClickRecyclerNinetyFive(view, position, item)
      }
    }
    )
    viewModel.ninetyFiveList.observe(requireActivity()) {
      ninetyFiveAdapter.updateData(it)
    }
    val followingAdapter = FollowingAdapter(viewModel.followingList.value?:mutableListOf())
    binding.recyclerFollowing.adapter = followingAdapter
    followingAdapter.setOnItemClickListener(
    object : FollowingAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Following1RowModel) {
        onClickRecyclerFollowing(view, position, item)
      }
    }
    )
    viewModel.followingList.observe(requireActivity()) {
      followingAdapter.updateData(it)
    }
    binding.followersDetailsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerNinetyFive(
    view: View,
    position: Int,
    item: NinetyfiveRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerFollowing(
    view: View,
    position: Int,
    item: Following1RowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "FOLLOWERS_DETAILS_FRAGMENT"

  }
}
