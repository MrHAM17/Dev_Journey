package com.fashionistaecommerceapp.app.modules.onbordingthree.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.base.BaseActivity
import com.fashionistaecommerceapp.app.databinding.ActivityOnbordingThreeBinding
import com.fashionistaecommerceapp.app.modules.onbordingthree.`data`.viewmodel.OnbordingThreeVM
import com.fashionistaecommerceapp.app.modules.signupsignin.ui.SignUpSignInActivity
import kotlin.String
import kotlin.Unit

class OnbordingThreeActivity :
    BaseActivity<ActivityOnbordingThreeBinding>(R.layout.activity_onbording_three) {
  private val viewModel: OnbordingThreeVM by viewModels<OnbordingThreeVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.onbordingThreeVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowDown1.setOnClickListener {
      val destIntent = SignUpSignInActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnArrowDown.setOnClickListener {
      finish()
    }
    binding.txtSkip.setOnClickListener {
      val destIntent = SignUpSignInActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "ONBORDING_THREE_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, OnbordingThreeActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
