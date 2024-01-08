package com.hiredjobsearch.app.modules.login.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseActivity
import com.hiredjobsearch.app.appcomponents.googleauth.GoogleHelper
import com.hiredjobsearch.app.databinding.ActivityLoginBinding
import com.hiredjobsearch.app.extensions.loadFragment
import com.hiredjobsearch.app.modules.enterotp.ui.EnterOtpFragment
import com.hiredjobsearch.app.modules.login.`data`.viewmodel.LoginVM
import com.hiredjobsearch.app.modules.signupcreateacount.ui.SignUpCreateAcountActivity
import kotlin.String
import kotlin.Unit

class LoginActivity : BaseActivity<ActivityLoginBinding>(R.layout.activity_login) {
  private val viewModel: LoginVM by viewModels<LoginVM>()

  private lateinit var googleLogin: GoogleHelper

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.loginVM = viewModel
    googleLogin = GoogleHelper(this,
    { accountInfo ->
      },{ error -> 

      })
    }

    override fun setUpClicks(): Unit {
      binding.btnContinueWithGoogle.setOnClickListener {
        googleLogin.login()
      }
      binding.btnContinueWithEmail.setOnClickListener {
        val destFragment = EnterOtpFragment.getInstance(null)
        this.loadFragment(
            R.id.fragmentContainer,
            destFragment,
            bundle = destFragment.arguments, 
            tag = EnterOtpFragment.TAG, 
            addToBackStack = true, 
            add = false, 
            enter = null, 
            exit = null, 
            )
      }
      binding.txtLargeLabelMedium.setOnClickListener {
        val destIntent = SignUpCreateAcountActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      binding.imageImage.setOnClickListener {
        finish()
      }
    }

    companion object {
      const val TAG: String = "LOGIN_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, LoginActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
