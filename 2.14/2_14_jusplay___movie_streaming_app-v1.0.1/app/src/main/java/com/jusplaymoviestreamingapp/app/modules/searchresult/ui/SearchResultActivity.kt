package com.jusplaymoviestreamingapp.app.modules.searchresult.ui

import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseActivity
import com.jusplaymoviestreamingapp.app.databinding.ActivitySearchResultBinding
import com.jusplaymoviestreamingapp.app.modules.searchresult.`data`.model.SearchresultRowModel
import com.jusplaymoviestreamingapp.app.modules.searchresult.`data`.viewmodel.SearchResultVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SearchResultActivity :
    BaseActivity<ActivitySearchResultBinding>(R.layout.activity_search_result) {
  private val viewModel: SearchResultVM by viewModels<SearchResultVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val searchResultAdapter =
    SearchResultAdapter(viewModel.searchResultList.value?:mutableListOf())
    binding.recyclerSearchResult.adapter = searchResultAdapter
    searchResultAdapter.setOnItemClickListener(
    object : SearchResultAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SearchresultRowModel) {
        onClickRecyclerSearchResult(view, position, item)
      }
    }
    )
    viewModel.searchResultList.observe(this) {
      searchResultAdapter.updateData(it)
    }
    binding.searchResultVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerSearchResult(
    view: View,
    position: Int,
    item: SearchresultRowModel
  ): Unit {
    when(view.id) {
    }
  }

  private fun setUpSearchViewSearchListener(): Unit {
    binding.searchViewSearch.setOnQueryTextListener(object : SearchView.OnQueryTextListener {
      override fun onQueryTextSubmit(p0 : String) : Boolean {
        // Performs search when user hit
        // the search button on the keyboard
        return false
      }
      override fun onQueryTextChange(p0 : String) : Boolean {
        // Start filtering the list as user
        // start entering the characters
        return false
      }
      })
    }

    companion object {
      const val TAG: String = "SEARCH_RESULT_ACTIVITY"

    }
  }
