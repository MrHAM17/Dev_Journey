package com.housitbuyrentsellproperty.app.modules.promotion.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityPromotionBinding
import com.housitbuyrentsellproperty.app.modules.promotion.`data`.viewmodel.PromotionVM
import kotlin.String
import kotlin.Unit

class PromotionActivity : BaseActivity<ActivityPromotionBinding>(R.layout.activity_promotion) {
  private val viewModel: PromotionVM by viewModels<PromotionVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.promotionVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "PROMOTION_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, PromotionActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
