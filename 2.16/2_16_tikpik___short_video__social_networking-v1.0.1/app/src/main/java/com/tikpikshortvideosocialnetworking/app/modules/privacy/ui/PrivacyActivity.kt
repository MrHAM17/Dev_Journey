package com.tikpikshortvideosocialnetworking.app.modules.privacy.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityPrivacyBinding
import com.tikpikshortvideosocialnetworking.app.modules.privacy.`data`.viewmodel.PrivacyVM
import kotlin.String
import kotlin.Unit

class PrivacyActivity : BaseActivity<ActivityPrivacyBinding>(R.layout.activity_privacy) {
  private val viewModel: PrivacyVM by viewModels<PrivacyVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.privacyVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "PRIVACY_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, PrivacyActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
