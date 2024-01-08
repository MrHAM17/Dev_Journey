package com.ecommerce.app.modules.register.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseActivity
import com.ecommerce.app.databinding.ActivityRegisterBinding
import com.ecommerce.app.modules.dashboardcontainer.ui.DashboardContainerActivity
import com.ecommerce.app.modules.register.`data`.viewmodel.RegisterVM
import kotlin.String
import kotlin.Unit

class RegisterActivity : BaseActivity<ActivityRegisterBinding>(R.layout.activity_register) {
  private val viewModel: RegisterVM by viewModels<RegisterVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.registerVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnSignUp.setOnClickListener {
      val destIntent = DashboardContainerActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "REGISTER_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, RegisterActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
