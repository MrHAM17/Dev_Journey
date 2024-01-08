package com.fashionistaecommerceapp.app.modules.writeareview.ui

import androidx.activity.viewModels
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.base.BaseActivity
import com.fashionistaecommerceapp.app.databinding.ActivityWriteAReviewBinding
import com.fashionistaecommerceapp.app.modules.reviewstabcontainer.ui.ReviewsTabContainerActivity
import com.fashionistaecommerceapp.app.modules.writeareview.`data`.viewmodel.WriteAReviewVM
import kotlin.String
import kotlin.Unit

class WriteAReviewActivity :
    BaseActivity<ActivityWriteAReviewBinding>(R.layout.activity_write_a_review) {
  private val viewModel: WriteAReviewVM by viewModels<WriteAReviewVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.writeAReviewVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnPostReview.setOnClickListener {
      val destIntent = ReviewsTabContainerActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnArrowDown.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "WRITE_A_REVIEW_ACTIVITY"

  }
}
