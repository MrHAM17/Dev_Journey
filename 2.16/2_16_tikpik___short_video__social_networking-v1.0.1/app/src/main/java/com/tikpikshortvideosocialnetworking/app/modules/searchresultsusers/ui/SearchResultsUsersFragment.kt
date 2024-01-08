package com.tikpikshortvideosocialnetworking.app.modules.searchresultsusers.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseFragment
import com.tikpikshortvideosocialnetworking.app.databinding.FragmentSearchResultsUsersBinding
import com.tikpikshortvideosocialnetworking.app.modules.searchresultsusers.`data`.model.SearchresultsusersRowModel
import com.tikpikshortvideosocialnetworking.app.modules.searchresultsusers.`data`.viewmodel.SearchResultsUsersVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SearchResultsUsersFragment :
    BaseFragment<FragmentSearchResultsUsersBinding>(R.layout.fragment_search_results_users) {
  private val viewModel: SearchResultsUsersVM by viewModels<SearchResultsUsersVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val searchresultsusersAdapter =
    SearchresultsusersAdapter(viewModel.searchresultsusersList.value?:mutableListOf())
    binding.recyclerSearchresultsusers.adapter = searchresultsusersAdapter
    searchresultsusersAdapter.setOnItemClickListener(
    object : SearchresultsusersAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SearchresultsusersRowModel) {
        onClickRecyclerSearchresultsusers(view, position, item)
      }
    }
    )
    viewModel.searchresultsusersList.observe(requireActivity()) {
      searchresultsusersAdapter.updateData(it)
    }
    binding.searchResultsUsersVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerSearchresultsusers(
    view: View,
    position: Int,
    item: SearchresultsusersRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "SEARCH_RESULTS_USERS_FRAGMENT"

  }
}
