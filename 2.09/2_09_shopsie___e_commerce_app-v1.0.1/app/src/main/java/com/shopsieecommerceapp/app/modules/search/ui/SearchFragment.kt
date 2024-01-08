package com.shopsieecommerceapp.app.modules.search.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseFragment
import com.shopsieecommerceapp.app.databinding.FragmentSearchBinding
import com.shopsieecommerceapp.app.modules.search.`data`.model.SearchRowModel
import com.shopsieecommerceapp.app.modules.search.`data`.viewmodel.SearchVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SearchFragment : BaseFragment<FragmentSearchBinding>(R.layout.fragment_search) {
  private val viewModel: SearchVM by viewModels<SearchVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val searchAdapter = SearchAdapter(viewModel.searchList.value?:mutableListOf())
    binding.recyclerSearch.adapter = searchAdapter
    searchAdapter.setOnItemClickListener(
    object : SearchAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SearchRowModel) {
        onClickRecyclerSearch(view, position, item)
      }
    }
    )
    viewModel.searchList.observe(requireActivity()) {
      searchAdapter.updateData(it)
    }
    binding.searchVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerSearch(
    view: View,
    position: Int,
    item: SearchRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "SEARCH_FRAGMENT"

  }
}
