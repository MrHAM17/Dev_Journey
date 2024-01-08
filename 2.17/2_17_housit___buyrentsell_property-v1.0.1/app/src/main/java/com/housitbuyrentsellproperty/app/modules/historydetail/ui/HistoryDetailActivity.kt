package com.housitbuyrentsellproperty.app.modules.historydetail.ui

import androidx.activity.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityHistoryDetailBinding
import com.housitbuyrentsellproperty.app.modules.addreviewempty.ui.AddReviewEmptyActivity
import com.housitbuyrentsellproperty.app.modules.historydetail.`data`.viewmodel.HistoryDetailVM
import kotlin.String
import kotlin.Unit

class HistoryDetailActivity :
    BaseActivity<ActivityHistoryDetailBinding>(R.layout.activity_history_detail) {
  private val viewModel: HistoryDetailVM by viewModels<HistoryDetailVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.historyDetailVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
    binding.btnClickHereToAddReview.setOnClickListener {
      val destIntent = AddReviewEmptyActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "HISTORY_DETAIL_ACTIVITY"

  }
}
