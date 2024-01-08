package com.tikpikshortvideosocialnetworking.app.modules.searchresultsvideos.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseFragment
import com.tikpikshortvideosocialnetworking.app.databinding.FragmentSearchResultsVideosBinding
import com.tikpikshortvideosocialnetworking.app.modules.searchresultsvideos.`data`.model.SearchresultsvideosRowModel
import com.tikpikshortvideosocialnetworking.app.modules.searchresultsvideos.`data`.viewmodel.SearchResultsVideosVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SearchResultsVideosFragment :
    BaseFragment<FragmentSearchResultsVideosBinding>(R.layout.fragment_search_results_videos) {
  private val viewModel: SearchResultsVideosVM by viewModels<SearchResultsVideosVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val searchresultsvideosAdapter =
    SearchresultsvideosAdapter(viewModel.searchresultsvideosList.value?:mutableListOf())
    binding.recyclerSearchresultsvideos.adapter = searchresultsvideosAdapter
    searchresultsvideosAdapter.setOnItemClickListener(
    object : SearchresultsvideosAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SearchresultsvideosRowModel) {
        onClickRecyclerSearchresultsvideos(view, position, item)
      }
    }
    )
    viewModel.searchresultsvideosList.observe(requireActivity()) {
      searchresultsvideosAdapter.updateData(it)
    }
    binding.searchResultsVideosVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerSearchresultsvideos(
    view: View,
    position: Int,
    item: SearchresultsvideosRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "SEARCH_RESULTS_VIDEOS_FRAGMENT"

  }
}
