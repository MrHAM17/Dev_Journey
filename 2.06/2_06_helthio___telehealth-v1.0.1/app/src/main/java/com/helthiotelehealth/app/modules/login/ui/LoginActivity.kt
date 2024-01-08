package com.helthiotelehealth.app.modules.login.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.facebook.CallbackManager
import com.facebook.FacebookCallback
import com.facebook.FacebookException
import com.facebook.login.LoginManager
import com.facebook.login.LoginResult
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.base.BaseActivity
import com.helthiotelehealth.app.appcomponents.facebookauth.FacebookHelper
import com.helthiotelehealth.app.appcomponents.googleauth.GoogleHelper
import com.helthiotelehealth.app.databinding.ActivityLoginBinding
import com.helthiotelehealth.app.modules.login.`data`.viewmodel.LoginVM
import com.helthiotelehealth.app.modules.resetpasswordemailtabcontainer.ui.ResetPasswordEmailTabContainerActivity
import com.helthiotelehealth.app.modules.signup.ui.SignUpActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class LoginActivity : BaseActivity<ActivityLoginBinding>(R.layout.activity_login) {
  private val viewModel: LoginVM by viewModels<LoginVM>()

  private var callbackManager: CallbackManager = CallbackManager.Factory.create()

  private val facebookLogin: FacebookHelper = FacebookHelper()

  private lateinit var googleLogin: GoogleHelper

  override fun onActivityResult(
    requestCode: Int,
    resultCode: Int,
    `data`: Intent?
  ) {
    callbackManager.onActivityResult(requestCode, resultCode, data)
    super.onActivityResult(requestCode,resultCode,data)
  }

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.loginVM = viewModel
    googleLogin = GoogleHelper(this,
    { accountInfo ->
      },{ error -> 

      })
    }

    override fun setUpClicks(): Unit {
      binding.btnSignInWithFacebook.setOnClickListener {
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
        binding.btnSignInWithGoogle.setOnClickListener {
          googleLogin.login()
        }
        binding.txtSignUp.setOnClickListener {
          val destIntent = SignUpActivity.getIntent(this, null)
          startActivity(destIntent)
        }
        binding.txtForgotPassword.setOnClickListener {
          val destIntent = ResetPasswordEmailTabContainerActivity.getIntent(this, null)
          startActivity(destIntent)
        }
        binding.btnLogin.setOnClickListener {
          // TODO please, add your navigation code here
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
