package com.housitbuyrentsellproperty.app.modules.producttourone.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityProductTourOneBinding
import com.housitbuyrentsellproperty.app.modules.login.ui.LoginActivity
import com.housitbuyrentsellproperty.app.modules.producttourone.`data`.viewmodel.ProductTourOneVM
import com.housitbuyrentsellproperty.app.modules.producttourtwo.ui.ProductTourTwoActivity
import kotlin.String
import kotlin.Unit

class ProductTourOneActivity :
    BaseActivity<ActivityProductTourOneBinding>(R.layout.activity_product_tour_one) {
  private val viewModel: ProductTourOneVM by viewModels<ProductTourOneVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.productTourOneVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnSkip.setOnClickListener {
      val destIntent = LoginActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnNext.setOnClickListener {
      val destIntent = ProductTourTwoActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "PRODUCT_TOUR_ONE_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ProductTourOneActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
