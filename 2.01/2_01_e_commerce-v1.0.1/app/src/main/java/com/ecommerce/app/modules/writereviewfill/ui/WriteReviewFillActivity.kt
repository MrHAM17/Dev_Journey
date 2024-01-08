package com.ecommerce.app.modules.writereviewfill.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseActivity
import com.ecommerce.app.databinding.ActivityWriteReviewFillBinding
import com.ecommerce.app.modules.writereviewfill.`data`.viewmodel.WriteReviewFillVM
import kotlin.String
import kotlin.Unit

class WriteReviewFillActivity :
    BaseActivity<ActivityWriteReviewFillBinding>(R.layout.activity_write_review_fill) {
  private val viewModel: WriteReviewFillVM by viewModels<WriteReviewFillVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.writeReviewFillVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "WRITE_REVIEW_FILL_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, WriteReviewFillActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
