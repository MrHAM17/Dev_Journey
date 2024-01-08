package com.fashionistaecommerceapp.app.modules.onbordingone.ui

import androidx.activity.viewModels
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.base.BaseActivity
import com.fashionistaecommerceapp.app.databinding.ActivityOnbordingOneBinding
import com.fashionistaecommerceapp.app.modules.onbordingone.`data`.viewmodel.OnbordingOneVM
import com.fashionistaecommerceapp.app.modules.onbordingtwo.ui.OnbordingTwoActivity
import com.fashionistaecommerceapp.app.modules.signupsignin.ui.SignUpSignInActivity
import kotlin.String
import kotlin.Unit

class OnbordingOneActivity :
    BaseActivity<ActivityOnbordingOneBinding>(R.layout.activity_onbording_one) {
  private val viewModel: OnbordingOneVM by viewModels<OnbordingOneVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.onbordingOneVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.txtSkip.setOnClickListener {
      val destIntent = SignUpSignInActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnArrowDown.setOnClickListener {
      val destIntent = OnbordingTwoActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "ONBORDING_ONE_ACTIVITY"

  }
}
