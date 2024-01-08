package com.jusplaymoviestreamingapp.app.modules.nohistory.ui

import androidx.activity.viewModels
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseActivity
import com.jusplaymoviestreamingapp.app.databinding.ActivityNoHistoryBinding
import com.jusplaymoviestreamingapp.app.modules.nohistory.`data`.viewmodel.NoHistoryVM
import kotlin.String
import kotlin.Unit

class NoHistoryActivity : BaseActivity<ActivityNoHistoryBinding>(R.layout.activity_no_history) {
  private val viewModel: NoHistoryVM by viewModels<NoHistoryVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.noHistoryVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "NO_HISTORY_ACTIVITY"

  }
}
