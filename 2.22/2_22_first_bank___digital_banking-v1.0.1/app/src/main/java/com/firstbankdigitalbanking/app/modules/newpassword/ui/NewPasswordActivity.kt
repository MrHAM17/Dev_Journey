package com.firstbankdigitalbanking.app.modules.newpassword.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.base.BaseActivity
import com.firstbankdigitalbanking.app.databinding.ActivityNewPasswordBinding
import com.firstbankdigitalbanking.app.modules.newpassword.`data`.viewmodel.NewPasswordVM
import kotlin.String
import kotlin.Unit

class NewPasswordActivity : BaseActivity<ActivityNewPasswordBinding>(R.layout.activity_new_password)
    {
  private val viewModel: NewPasswordVM by viewModels<NewPasswordVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.newPasswordVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "NEW_PASSWORD_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, NewPasswordActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
