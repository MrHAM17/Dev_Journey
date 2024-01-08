package com.jusplaymoviestreamingapp.app.modules.notfound.ui

import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseActivity
import com.jusplaymoviestreamingapp.app.databinding.ActivityNotFoundBinding
import com.jusplaymoviestreamingapp.app.modules.notfound.`data`.viewmodel.NotFoundVM
import kotlin.Boolean
import kotlin.String
import kotlin.Unit

class NotFoundActivity : BaseActivity<ActivityNotFoundBinding>(R.layout.activity_not_found) {
  private val viewModel: NotFoundVM by viewModels<NotFoundVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.notFoundVM = viewModel
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
      const val TAG: String = "NOT_FOUND_ACTIVITY"

    }
  }
