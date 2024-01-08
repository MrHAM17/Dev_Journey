package com.ecommerce.app.modules.reviewproduct.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseActivity
import com.ecommerce.app.databinding.ActivityReviewProductBinding
import com.ecommerce.app.modules.reviewproduct.`data`.model.ReviewproductRowModel
import com.ecommerce.app.modules.reviewproduct.`data`.viewmodel.ReviewProductVM
import com.ecommerce.app.modules.writereviewfill.ui.WriteReviewFillActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ReviewProductActivity :
    BaseActivity<ActivityReviewProductBinding>(R.layout.activity_review_product) {
  private val viewModel: ReviewProductVM by viewModels<ReviewProductVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val reviewProductAdapter =
    ReviewProductAdapter(viewModel.reviewProductList.value?:mutableListOf())
    binding.recyclerReviewProduct.adapter = reviewProductAdapter
    reviewProductAdapter.setOnItemClickListener(
    object : ReviewProductAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ReviewproductRowModel) {
        onClickRecyclerReviewProduct(view, position, item)
      }
    }
    )
    viewModel.reviewProductList.observe(this) {
      reviewProductAdapter.updateData(it)
    }
    binding.reviewProductVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
    binding.btnWriteReview.setOnClickListener {
      val destIntent = WriteReviewFillActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerReviewProduct(
    view: View,
    position: Int,
    item: ReviewproductRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "REVIEW_PRODUCT_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ReviewProductActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
