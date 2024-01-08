package com.hiredjobsearch.app.modules.signupcreateacount.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseActivity
import com.hiredjobsearch.app.appcomponents.googleauth.GoogleHelper
import com.hiredjobsearch.app.databinding.ActivitySignUpCreateAcountBinding
import com.hiredjobsearch.app.modules.login.ui.LoginActivity
import com.hiredjobsearch.app.modules.signupcompleteaccount.ui.SignUpCompleteAccountActivity
import com.hiredjobsearch.app.modules.signupcreateacount.`data`.viewmodel.SignUpCreateAcountVM
import kotlin.String
import kotlin.Unit

class SignUpCreateAcountActivity :
    BaseActivity<ActivitySignUpCreateAcountBinding>(R.layout.activity_sign_up_create_acount) {
  private val viewModel: SignUpCreateAcountVM by viewModels<SignUpCreateAcountVM>()

  private lateinit var googleLogin: GoogleHelper

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.signUpCreateAcountVM = viewModel
    googleLogin = GoogleHelper(this,
    { accountInfo ->
      },{ error ->

      })
    }

    override fun setUpClicks(): Unit {
      binding.txtLargeLabelMedium.setOnClickListener {
        val destIntent = LoginActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      binding.imageImage.setOnClickListener {
        finish()
      }
      binding.btnContinueWithGoogle.setOnClickListener {
        googleLogin.login()
      }
      binding.btnContinueWithEmail.setOnClickListener {
        val destIntent = SignUpCompleteAccountActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }

    companion object {
      const val TAG: String = "SIGN_UP_CREATE_ACOUNT_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, SignUpCreateAcountActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
