package com.tikpikshortvideosocialnetworking.app.modules.searchresultstop.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseFragment
import com.tikpikshortvideosocialnetworking.app.databinding.FragmentSearchResultsTopBinding
import com.tikpikshortvideosocialnetworking.app.modules.searchresultstop.`data`.model.AutolayouthorizontalRowModel
import com.tikpikshortvideosocialnetworking.app.modules.searchresultstop.`data`.model.FollowRowModel
import com.tikpikshortvideosocialnetworking.app.modules.searchresultstop.`data`.viewmodel.SearchResultsTopVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SearchResultsTopFragment :
    BaseFragment<FragmentSearchResultsTopBinding>(R.layout.fragment_search_results_top) {
  private val viewModel: SearchResultsTopVM by viewModels<SearchResultsTopVM>()

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
    val autoLayoutHorizontalAdapter =
    AutoLayoutHorizontalAdapter(viewModel.autoLayoutHorizontalList.value?:mutableListOf())
    binding.recyclerAutoLayoutHorizontal.adapter = autoLayoutHorizontalAdapter
    autoLayoutHorizontalAdapter.setOnItemClickListener(
    object : AutoLayoutHorizontalAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : AutolayouthorizontalRowModel) {
        onClickRecyclerAutoLayoutHorizontal(view, position, item)
      }
    }
    )
    viewModel.autoLayoutHorizontalList.observe(requireActivity()) {
      autoLayoutHorizontalAdapter.updateData(it)
    }
    binding.searchResultsTopVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerFollow(
    view: View,
    position: Int,
    item: FollowRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerAutoLayoutHorizontal(
    view: View,
    position: Int,
    item: AutolayouthorizontalRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "SEARCH_RESULTS_TOP_FRAGMENT"

  }
}
