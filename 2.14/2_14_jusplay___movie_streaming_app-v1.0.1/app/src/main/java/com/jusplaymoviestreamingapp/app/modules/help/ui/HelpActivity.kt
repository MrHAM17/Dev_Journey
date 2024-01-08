package com.jusplaymoviestreamingapp.app.modules.help.ui

import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseActivity
import com.jusplaymoviestreamingapp.app.databinding.ActivityHelpBinding
import com.jusplaymoviestreamingapp.app.modules.help.`data`.viewmodel.HelpVM
import kotlin.Boolean
import kotlin.String
import kotlin.Unit

class HelpActivity : BaseActivity<ActivityHelpBinding>(R.layout.activity_help) {
  private val viewModel: HelpVM by viewModels<HelpVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.helpVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
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
      const val TAG: String = "HELP_ACTIVITY"

    }
  }
