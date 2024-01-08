package com.housitbuyrentsellproperty.app.modules.producttourtwo.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityProductTourTwoBinding
import com.housitbuyrentsellproperty.app.modules.login.ui.LoginActivity
import com.housitbuyrentsellproperty.app.modules.producttourthree.ui.ProductTourThreeActivity
import com.housitbuyrentsellproperty.app.modules.producttourtwo.`data`.viewmodel.ProductTourTwoVM
import kotlin.String
import kotlin.Unit

class ProductTourTwoActivity :
    BaseActivity<ActivityProductTourTwoBinding>(R.layout.activity_product_tour_two) {
  private val viewModel: ProductTourTwoVM by viewModels<ProductTourTwoVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.productTourTwoVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnNext.setOnClickListener {
      val destIntent = ProductTourThreeActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnSkip.setOnClickListener {
      val destIntent = LoginActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "PRODUCT_TOUR_TWO_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ProductTourTwoActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
