package com.tikpikshortvideosocialnetworking.app.modules.searchresultssounds.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseFragment
import com.tikpikshortvideosocialnetworking.app.databinding.FragmentSearchResultsSoundsBinding
import com.tikpikshortvideosocialnetworking.app.modules.searchresultssounds.`data`.model.SearchresultssoundsRowModel
import com.tikpikshortvideosocialnetworking.app.modules.searchresultssounds.`data`.viewmodel.SearchResultsSoundsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SearchResultsSoundsFragment :
    BaseFragment<FragmentSearchResultsSoundsBinding>(R.layout.fragment_search_results_sounds) {
  private val viewModel: SearchResultsSoundsVM by viewModels<SearchResultsSoundsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val searchresultssoundsAdapter =
    SearchresultssoundsAdapter(viewModel.searchresultssoundsList.value?:mutableListOf())
    binding.recyclerSearchresultssounds.adapter = searchresultssoundsAdapter
    searchresultssoundsAdapter.setOnItemClickListener(
    object : SearchresultssoundsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SearchresultssoundsRowModel) {
        onClickRecyclerSearchresultssounds(view, position, item)
      }
    }
    )
    viewModel.searchresultssoundsList.observe(requireActivity()) {
      searchresultssoundsAdapter.updateData(it)
    }
    binding.searchResultsSoundsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerSearchresultssounds(
    view: View,
    position: Int,
    item: SearchresultssoundsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "SEARCH_RESULTS_SOUNDS_FRAGMENT"

  }
}
