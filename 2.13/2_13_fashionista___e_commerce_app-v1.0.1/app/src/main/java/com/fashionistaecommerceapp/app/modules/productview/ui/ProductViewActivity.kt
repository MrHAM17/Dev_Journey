package com.fashionistaecommerceapp.app.modules.productview.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.base.BaseActivity
import com.fashionistaecommerceapp.app.databinding.ActivityProductViewBinding
import com.fashionistaecommerceapp.app.modules.productview.`data`.viewmodel.ProductViewVM
import com.fashionistaecommerceapp.app.modules.reviewstabcontainer.ui.ReviewsTabContainerActivity
import kotlin.String
import kotlin.Unit

class ProductViewActivity : BaseActivity<ActivityProductViewBinding>(R.layout.activity_product_view)
    {
  private val viewModel: ProductViewVM by viewModels<ProductViewVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.productViewVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.txtSeeAll.setOnClickListener {
      val destIntent = ReviewsTabContainerActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "PRODUCT_VIEW_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ProductViewActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
