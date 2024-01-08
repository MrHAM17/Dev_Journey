package com.tunecastmusicstreamingpodcastapp.app.modules.searchresulttop.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.FragmentSearchResultTopBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresulttop.`data`.model.FollowRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresulttop.`data`.model.TeenagedreamRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresulttop.`data`.viewmodel.SearchResultTopVM
import com.tunecastmusicstreamingpodcastapp.app.modules.songplay.ui.SongPlayActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SearchResultTopFragment :
    BaseFragment<FragmentSearchResultTopBinding>(R.layout.fragment_search_result_top) {
  private val viewModel: SearchResultTopVM by viewModels<SearchResultTopVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val followAdapter = FollowAdapter(viewModel.followList.value?:mutableListOf())
    binding.recyclerFollow.adapter = followAdapter
    followAdapter.setOnItemClickListener(
    object : FollowAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : FollowRowModel) {
        onClickRecyclerFollow(view, position, item)
      }
    }
    )
    viewModel.followList.observe(requireActivity()) {
      followAdapter.updateData(it)
    }
    val teenageDreamAdapter =
    TeenageDreamAdapter(viewModel.teenageDreamList.value?:mutableListOf())
    binding.recyclerTeenageDream.adapter = teenageDreamAdapter
    teenageDreamAdapter.setOnItemClickListener(
    object : TeenageDreamAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : TeenagedreamRowModel) {
        onClickRecyclerTeenageDream(view, position, item)
      }
    }
    )
    viewModel.teenageDreamList.observe(requireActivity()) {
      teenageDreamAdapter.updateData(it)
    }
    binding.searchResultTopVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerFollow(
    view: View,
    position: Int,
    item: FollowRowModel
  ): Unit {
    when(view.id) {
      R.id.linearSongCard ->  {
        onClickRecyclerFollowLinearSongCard(view, position, item)
      }
    }
  }

  fun onClickRecyclerTeenageDream(
    view: View,
    position: Int,
    item: TeenagedreamRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerFollowLinearSongCard(
    view: View,
    position: Int,
    item: FollowRowModel
  ) {
    /** TODO As per your logic, Add constant type for item click.*/
    when(0) {
      0 ->  {
        val destIntent = SongPlayActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
      1 ->  {
        val destIntent = SongPlayActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
      2 ->  {
        val destIntent = SongPlayActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
    }
  }

  companion object {
    const val TAG: String = "SEARCH_RESULT_TOP_FRAGMENT"

  }
}
