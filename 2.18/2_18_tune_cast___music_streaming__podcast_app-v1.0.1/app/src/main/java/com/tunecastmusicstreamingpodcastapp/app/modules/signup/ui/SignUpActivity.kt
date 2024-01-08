package com.tunecastmusicstreamingpodcastapp.app.modules.signup.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.googleauth.GoogleHelper
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivitySignUpBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.letsyouin.ui.LetsYouInActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.profile.ui.ProfileActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.signup.`data`.viewmodel.SignUpVM
import kotlin.String
import kotlin.Unit

class SignUpActivity : BaseActivity<ActivitySignUpBinding>(R.layout.activity_sign_up) {
  private val viewModel: SignUpVM by viewModels<SignUpVM>()

  private lateinit var googleLogin: GoogleHelper

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.signUpVM = viewModel
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
        binding.imageGoogle.setOnClickListener {
          googleLogin.login()
        }
        binding..setOnClickListener {
          googleLogin.login()
        }
        binding.imageImage.setOnClickListener {
          finish()
        }
        binding.btnSignUp.setOnClickListener {
          val destIntent = ProfileActivity.getIntent(this, null)
          startActivity(destIntent)
        }
        binding.txtSignIn.setOnClickListener {
          val destIntent = LetsYouInActivity.getIntent(this, null)
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
