package com.tunecastmusicstreamingpodcastapp.app.modules.signin.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.googleauth.GoogleHelper
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivitySignInBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.forgotpassword.ui.ForgotPasswordActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.homecontainer.ui.HomeContainerActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.signin.`data`.viewmodel.SignInVM
import com.tunecastmusicstreamingpodcastapp.app.modules.signup.ui.SignUpActivity
import kotlin.String
import kotlin.Unit

class SignInActivity : BaseActivity<ActivitySignInBinding>(R.layout.activity_sign_in) {
  private val viewModel: SignInVM by viewModels<SignInVM>()

  private lateinit var googleLogin: GoogleHelper

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.signInVM = viewModel
    googleLogin = GoogleHelper(this,
    { accountInfo ->
      },{ error -> 

      })
      googleLogin = GoogleHelper(this,
      { accountInfo ->
        },{ error -> 

        })
      }

      override fun setUpClicks(): Unit {
        binding..setOnClickListener {
          googleLogin.login()
        }
        binding.imageImage.setOnClickListener {
          finish()
        }
        binding.btnSignIn.setOnClickListener {
          val destIntent = HomeContainerActivity.getIntent(this, null)
          startActivity(destIntent)
        }
        binding.btnSignIn.setOnClickListener {
          val destIntent = HomeContainerActivity.getIntent(this, null)
          startActivity(destIntent)
        }
        binding.txtForgotThePassword.setOnClickListener {
          val destIntent = ForgotPasswordActivity.getIntent(this, null)
          startActivity(destIntent)
        }
        binding.txtForgotThePassword.setOnClickListener {
          val destIntent = ForgotPasswordActivity.getIntent(this, null)
          startActivity(destIntent)
        }
        binding.imageGoogle.setOnClickListener {
          googleLogin.login()
        }
        binding.txtSignUp.setOnClickListener {
          val destIntent = SignUpActivity.getIntent(this, null)
          startActivity(destIntent)
        }
      }

      companion object {
        const val TAG: String = "SIGN_IN_ACTIVITY"


        fun getIntent(context: Context, bundle: Bundle?): Intent {
          val destIntent = Intent(context, SignInActivity::class.java)
          destIntent.putExtra("bundle", bundle)
          return destIntent
        }
      }
    }
