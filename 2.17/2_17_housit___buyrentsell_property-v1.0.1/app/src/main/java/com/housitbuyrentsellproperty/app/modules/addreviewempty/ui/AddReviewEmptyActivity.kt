package com.housitbuyrentsellproperty.app.modules.addreviewempty.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityAddReviewEmptyBinding
import com.housitbuyrentsellproperty.app.modules.addreviewempty.`data`.viewmodel.AddReviewEmptyVM
import com.housitbuyrentsellproperty.app.modules.addreviewfill.ui.AddReviewFillActivity
import kotlin.String
import kotlin.Unit

class AddReviewEmptyActivity :
    BaseActivity<ActivityAddReviewEmptyBinding>(R.layout.activity_add_review_empty) {
  private val viewModel: AddReviewEmptyVM by viewModels<AddReviewEmptyVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.addReviewEmptyVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnSubmit.setOnClickListener {
      val destIntent = AddReviewFillActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "ADD_REVIEW_EMPTY_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, AddReviewEmptyActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
