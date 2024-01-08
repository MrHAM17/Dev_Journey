package com.jusplaymoviestreamingapp.app.modules.savedempty.ui

import androidx.activity.viewModels
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseActivity
import com.jusplaymoviestreamingapp.app.databinding.ActivitySavedEmptyBinding
import com.jusplaymoviestreamingapp.app.modules.savedempty.`data`.viewmodel.SavedEmptyVM
import kotlin.String
import kotlin.Unit

class SavedEmptyActivity : BaseActivity<ActivitySavedEmptyBinding>(R.layout.activity_saved_empty) {
  private val viewModel: SavedEmptyVM by viewModels<SavedEmptyVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.savedEmptyVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "SAVED_EMPTY_ACTIVITY"

  }
}
