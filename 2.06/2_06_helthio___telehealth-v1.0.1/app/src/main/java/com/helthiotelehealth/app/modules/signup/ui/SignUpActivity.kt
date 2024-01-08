package com.helthiotelehealth.app.modules.signup.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.base.BaseActivity
import com.helthiotelehealth.app.databinding.ActivitySignUpBinding
import com.helthiotelehealth.app.modules.login.ui.LoginActivity
import com.helthiotelehealth.app.modules.signup.`data`.viewmodel.SignUpVM
import com.helthiotelehealth.app.modules.signupsuccess.ui.SignUpSuccessDialog
import kotlin.String
import kotlin.Unit

class SignUpActivity : BaseActivity<ActivitySignUpBinding>(R.layout.activity_sign_up) {
  private val viewModel: SignUpVM by viewModels<SignUpVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.signUpVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnSignUp.setOnClickListener {
      val destFragment = SignUpSuccessDialog.getInstance(null)
      destFragment.show(this.supportFragmentManager, SignUpSuccessDialog.TAG)
    }
    binding.txtLogIn.setOnClickListener {
      val destIntent = LoginActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "SIGN_UP_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SignUpActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
