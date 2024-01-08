package com.moviestreaming.app.modules.searcheight.ui

import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.base.BaseActivity
import com.moviestreaming.app.databinding.ActivitySearchEightBinding
import com.moviestreaming.app.modules.searcheight.`data`.viewmodel.SearchEightVM
import kotlin.Boolean
import kotlin.String
import kotlin.Unit

class SearchEightActivity : BaseActivity<ActivitySearchEightBinding>(R.layout.activity_search_eight)
    {
  private val viewModel: SearchEightVM by viewModels<SearchEightVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.searchEightVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
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
      const val TAG: String = "SEARCH_EIGHT_ACTIVITY"

    }
  }
