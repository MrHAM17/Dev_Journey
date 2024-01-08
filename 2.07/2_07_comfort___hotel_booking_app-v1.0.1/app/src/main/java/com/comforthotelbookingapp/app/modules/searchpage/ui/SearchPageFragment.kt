package com.comforthotelbookingapp.app.modules.searchpage.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseFragment
import com.comforthotelbookingapp.app.databinding.FragmentSearchPageBinding
import com.comforthotelbookingapp.app.modules.searchpage.`data`.model.SearchpageRowModel
import com.comforthotelbookingapp.app.modules.searchpage.`data`.viewmodel.SearchPageVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SearchPageFragment : BaseFragment<FragmentSearchPageBinding>(R.layout.fragment_search_page) {
  private val viewModel: SearchPageVM by viewModels<SearchPageVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val searchPageAdapter = SearchPageAdapter(viewModel.searchPageList.value?:mutableListOf())
    binding.recyclerSearchPage.adapter = searchPageAdapter
    searchPageAdapter.setOnItemClickListener(
    object : SearchPageAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SearchpageRowModel) {
        onClickRecyclerSearchPage(view, position, item)
      }
    }
    )
    viewModel.searchPageList.observe(requireActivity()) {
      searchPageAdapter.updateData(it)
    }
    binding.searchPageVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerSearchPage(
    view: View,
    position: Int,
    item: SearchpageRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "SEARCH_PAGE_FRAGMENT"

  }
}
