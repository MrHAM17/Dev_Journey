package com.blogapp.app.modules.searchtopics.ui

import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.blogapp.app.R
import com.blogapp.app.appcomponents.base.BaseActivity
import com.blogapp.app.databinding.ActivitySearchTopicsBinding
import com.blogapp.app.modules.searchtopics.`data`.viewmodel.SearchTopicsVM
import kotlin.Boolean
import kotlin.String
import kotlin.Unit

class SearchTopicsActivity :
    BaseActivity<ActivitySearchTopicsBinding>(R.layout.activity_search_topics) {
  private val viewModel: SearchTopicsVM by viewModels<SearchTopicsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.searchTopicsVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
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
      const val TAG: String = "SEARCH_TOPICS_ACTIVITY"

    }
  }
