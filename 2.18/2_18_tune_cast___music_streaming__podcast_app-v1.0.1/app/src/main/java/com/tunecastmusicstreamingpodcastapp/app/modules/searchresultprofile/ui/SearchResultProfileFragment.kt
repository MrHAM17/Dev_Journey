package com.tunecastmusicstreamingpodcastapp.app.modules.searchresultprofile.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.FragmentSearchResultProfileBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.profiledetails.ui.ProfileDetailsActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultprofile.`data`.model.FollowingRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultprofile.`data`.model.FortyfiveRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultprofile.`data`.viewmodel.SearchResultProfileVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SearchResultProfileFragment :
    BaseFragment<FragmentSearchResultProfileBinding>(R.layout.fragment_search_result_profile) {
  private val viewModel: SearchResultProfileVM by viewModels<SearchResultProfileVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val fortyFiveAdapter = FortyFiveAdapter(viewModel.fortyFiveList.value?:mutableListOf())
    binding.recyclerFortyFive.adapter = fortyFiveAdapter
    fortyFiveAdapter.setOnItemClickListener(
    object : FortyFiveAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : FortyfiveRowModel) {
        onClickRecyclerFortyFive(view, position, item)
      }
    }
    )
    viewModel.fortyFiveList.observe(requireActivity()) {
      fortyFiveAdapter.updateData(it)
    }
    val followingAdapter = FollowingAdapter(viewModel.followingList.value?:mutableListOf())
    binding.recyclerFollowing.adapter = followingAdapter
    followingAdapter.setOnItemClickListener(
    object : FollowingAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : FollowingRowModel) {
        onClickRecyclerFollowing(view, position, item)
      }
    }
    )
    viewModel.followingList.observe(requireActivity()) {
      followingAdapter.updateData(it)
    }
    binding.searchResultProfileVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerFortyFive(
    view: View,
    position: Int,
    item: FortyfiveRowModel
  ): Unit {
    when(view.id) {
      R.id.linearArtist ->  {
        onClickRecyclerFortyFiveLinearArtist(view, position, item)
      }
    }
  }

  fun onClickRecyclerFollowing(
    view: View,
    position: Int,
    item: FollowingRowModel
  ): Unit {
    when(view.id) {
      R.id.linearArtist ->  {
        val destIntent = ProfileDetailsActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
    }
  }

  fun onClickRecyclerFortyFiveLinearArtist(
    view: View,
    position: Int,
    item: FortyfiveRowModel
  ) {
    /** TODO As per your logic, Add constant type for item click.*/
    when(0) {
      0 ->  {
        val destIntent = ProfileDetailsActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
      1 ->  {
        val destIntent = ProfileDetailsActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
      2 ->  {
        val destIntent = ProfileDetailsActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
      3 ->  {
        val destIntent = ProfileDetailsActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
      4 ->  {
        val destIntent = ProfileDetailsActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
    }
  }

  companion object {
    const val TAG: String = "SEARCH_RESULT_PROFILE_FRAGMENT"

  }
}
