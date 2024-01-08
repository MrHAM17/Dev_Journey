package com.helthiotelehealth.app.modules.drugsdetail.ui

import androidx.activity.viewModels
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.base.BaseActivity
import com.helthiotelehealth.app.databinding.ActivityDrugsDetailBinding
import com.helthiotelehealth.app.modules.drugsdetail.`data`.viewmodel.DrugsDetailVM
import com.helthiotelehealth.app.modules.mycart.ui.MyCartActivity
import kotlin.String
import kotlin.Unit

class DrugsDetailActivity : BaseActivity<ActivityDrugsDetailBinding>(R.layout.activity_drugs_detail)
    {
  private val viewModel: DrugsDetailVM by viewModels<DrugsDetailVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.drugsDetailVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnAddToCart.setOnClickListener {
      val destIntent = MyCartActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnCart.setOnClickListener {
      val destIntent = MyCartActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "DRUGS_DETAIL_ACTIVITY"

  }
}
