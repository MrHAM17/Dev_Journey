package com.fashionistaecommerceapp.app.modules.onbordingtwo.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.base.BaseActivity
import com.fashionistaecommerceapp.app.databinding.ActivityOnbordingTwoBinding
import com.fashionistaecommerceapp.app.modules.onbordingthree.ui.OnbordingThreeActivity
import com.fashionistaecommerceapp.app.modules.onbordingtwo.`data`.viewmodel.OnbordingTwoVM
import com.fashionistaecommerceapp.app.modules.signupsignin.ui.SignUpSignInActivity
import kotlin.String
import kotlin.Unit

class OnbordingTwoActivity :
    BaseActivity<ActivityOnbordingTwoBinding>(R.layout.activity_onbording_two) {
  private val viewModel: OnbordingTwoVM by viewModels<OnbordingTwoVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.onbordingTwoVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowDown1.setOnClickListener {
      val destIntent = OnbordingThreeActivity.getIntent(this, null)
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
    const val TAG: String = "ONBORDING_TWO_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, OnbordingTwoActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
