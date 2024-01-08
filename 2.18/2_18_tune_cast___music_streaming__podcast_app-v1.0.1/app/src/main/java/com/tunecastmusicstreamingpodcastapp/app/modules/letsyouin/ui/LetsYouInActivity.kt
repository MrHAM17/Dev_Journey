package com.tunecastmusicstreamingpodcastapp.app.modules.letsyouin.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.facebook.CallbackManager
import com.facebook.FacebookCallback
import com.facebook.FacebookException
import com.facebook.login.LoginManager
import com.facebook.login.LoginResult
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.facebookauth.FacebookHelper
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.googleauth.GoogleHelper
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityLetsYouInBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.letsyouin.`data`.viewmodel.LetsYouInVM
import com.tunecastmusicstreamingpodcastapp.app.modules.signin.ui.SignInActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.signup.ui.SignUpActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class LetsYouInActivity : BaseActivity<ActivityLetsYouInBinding>(R.layout.activity_lets_you_in) {
  private val viewModel: LetsYouInVM by viewModels<LetsYouInVM>()

  private var callbackManager: CallbackManager = CallbackManager.Factory.create()


  private val facebookLogin: FacebookHelper = FacebookHelper()


  private lateinit var googleLogin: GoogleHelper

  override fun onActivityResult(
    requestCode: Int,
    resultCode: Int,
    `data`: Intent?
  ): Unit {
    callbackManager.onActivityResult(requestCode, resultCode, data)
    super.onActivityResult(requestCode,resultCode,data)
  }

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.letsYouInVM = viewModel
    googleLogin = GoogleHelper(this,
    { accountInfo ->
      },{ error ->

      })
    }

    override fun setUpClicks(): Unit {
      binding..setOnClickListener {
        LoginManager.getInstance().logInWithReadPermissions(this, listOf("public_profile"))
        facebookLogin.login(callbackManager,object : FacebookCallback<LoginResult> {
          override fun onSuccess(result: LoginResult?) {
          }
          override fun onError(error: FacebookException?) {
          }
          override fun onCancel() {
          }
          })
        }
        binding..setOnClickListener {
          googleLogin.login()
        }
        binding.imageImage.setOnClickListener {
          finish()
        }
        binding.txtSignUp.setOnClickListener {
          val destIntent = SignUpActivity.getIntent(this, null)
          startActivity(destIntent)
        }
        binding.btnSignInWithPassword.setOnClickListener {
          val destIntent = SignInActivity.getIntent(this, null)
          startActivity(destIntent)
        }
      }

      companion object {
        const val TAG: String = "LETS_YOU_IN_ACTIVITY"


        fun getIntent(context: Context, bundle: Bundle?): Intent {
          val destIntent = Intent(context, LetsYouInActivity::class.java)
          destIntent.putExtra("bundle", bundle)
          return destIntent
        }
      }
    }
