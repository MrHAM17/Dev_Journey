package com.housitbuyrentsellproperty.app.modules.reviewfill.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityReviewFillBinding
import com.housitbuyrentsellproperty.app.modules.reviewfill.`data`.model.Layout1RowModel
import com.housitbuyrentsellproperty.app.modules.reviewfill.`data`.viewmodel.ReviewFillVM
import com.housitbuyrentsellproperty.app.modules.summary.ui.SummaryActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ReviewFillActivity : BaseActivity<ActivityReviewFillBinding>(R.layout.activity_review_fill) {
  private val viewModel: ReviewFillVM by viewModels<ReviewFillVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val layoutAdapter = LayoutAdapter(viewModel.layoutList.value?:mutableListOf())
    binding.recyclerLayout.adapter = layoutAdapter
    layoutAdapter.setOnItemClickListener(
    object : LayoutAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Layout1RowModel) {
        onClickRecyclerLayout(view, position, item)
      }
    }
    )
    viewModel.layoutList.observe(this) {
      layoutAdapter.updateData(it)
    }
    binding.reviewFillVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
    binding.btnNext.setOnClickListener {
      val destIntent = SummaryActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerLayout(
    view: View,
    position: Int,
    item: Layout1RowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "REVIEW_FILL_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ReviewFillActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
