package com.housitbuyrentsellproperty.app.modules.producttourthree.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityProductTourThreeBinding
import com.housitbuyrentsellproperty.app.modules.login.ui.LoginActivity
import com.housitbuyrentsellproperty.app.modules.producttourthree.`data`.viewmodel.ProductTourThreeVM
import kotlin.String
import kotlin.Unit

class ProductTourThreeActivity :
    BaseActivity<ActivityProductTourThreeBinding>(R.layout.activity_product_tour_three) {
  private val viewModel: ProductTourThreeVM by viewModels<ProductTourThreeVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.productTourThreeVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnSkip.setOnClickListener {
      val destIntent = LoginActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnLogin.setOnClickListener {
      val destIntent = LoginActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "PRODUCT_TOUR_THREE_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ProductTourThreeActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
