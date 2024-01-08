package com.comforthotelbookingapp.app.modules.security.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseActivity
import com.comforthotelbookingapp.app.databinding.ActivitySecurityBinding
import com.comforthotelbookingapp.app.modules.security.`data`.viewmodel.SecurityVM
import kotlin.String
import kotlin.Unit

class SecurityActivity : BaseActivity<ActivitySecurityBinding>(R.layout.activity_security) {
  private val viewModel: SecurityVM by viewModels<SecurityVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.securityVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "SECURITY_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SecurityActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
