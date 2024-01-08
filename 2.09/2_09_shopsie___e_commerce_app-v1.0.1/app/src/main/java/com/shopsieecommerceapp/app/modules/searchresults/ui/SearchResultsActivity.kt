package com.shopsieecommerceapp.app.modules.searchresults.ui

import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseActivity
import com.shopsieecommerceapp.app.databinding.ActivitySearchResultsBinding
import com.shopsieecommerceapp.app.modules.searchresults.`data`.viewmodel.SearchResultsVM
import com.shopsieecommerceapp.app.modules.singlepost.ui.SinglePostBottomsheet
import kotlin.Boolean
import kotlin.String
import kotlin.Unit

class SearchResultsActivity :
    BaseActivity<ActivitySearchResultsBinding>(R.layout.activity_search_results) {
  private val viewModel: SearchResultsVM by viewModels<SearchResultsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.searchResultsVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
    binding.linearCard03.setOnClickListener {
      val destFragment = SinglePostBottomsheet.getInstance(null)
      destFragment.show(this.supportFragmentManager, SinglePostBottomsheet.TAG)
    }
    binding.btnButtonIcon.setOnClickListener {
      finish()
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
      const val TAG: String = "SEARCH_RESULTS_ACTIVITY"

    }
  }
