package com.comforthotelbookingapp.app.modules.letsyouin.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseActivity
import com.comforthotelbookingapp.app.appcomponents.facebookauth.FacebookHelper
import com.comforthotelbookingapp.app.appcomponents.googleauth.GoogleHelper
import com.comforthotelbookingapp.app.databinding.ActivityLetSYouInBinding
import com.comforthotelbookingapp.app.modules.letsyouin.`data`.viewmodel.LetSYouInVM
import com.comforthotelbookingapp.app.modules.signin.ui.SignInActivity
import com.comforthotelbookingapp.app.modules.signupblank.ui.SignUpBlankActivity
import com.facebook.CallbackManager
import com.facebook.FacebookCallback
import com.facebook.FacebookException
import com.facebook.login.LoginManager
import com.facebook.login.LoginResult
import kotlin.Int
import kotlin.String
import kotlin.Unit

class LetSYouInActivity : BaseActivity<ActivityLetSYouInBinding>(R.layout.activity_let_s_you_in) {
  private val viewModel: LetSYouInVM by viewModels<LetSYouInVM>()

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
    binding.letSYouInVM = viewModel
    googleLogin = GoogleHelper(this,
    { accountInfo ->
      },{ error ->

      })
    }

    override fun setUpClicks(): Unit {
      binding.btnContinueWithGoogle.setOnClickListener {
        googleLogin.login()
      }
      binding.btnSignInWithPassword.setOnClickListener {
        val destIntent = SignInActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      binding.btnContinueWithFacebook.setOnClickListener {
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
        binding.txtSignUp.setOnClickListener {
          val destIntent = SignUpBlankActivity.getIntent(this, null)
          startActivity(destIntent)
        }
      }

      companion object {
        const val TAG: String = "LET_S_YOU_IN_ACTIVITY"


        fun getIntent(context: Context, bundle: Bundle?): Intent {
          val destIntent = Intent(context, LetSYouInActivity::class.java)
          destIntent.putExtra("bundle", bundle)
          return destIntent
        }
      }
    }
