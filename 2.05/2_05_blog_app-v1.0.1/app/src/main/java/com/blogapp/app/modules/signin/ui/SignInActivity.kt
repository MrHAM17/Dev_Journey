package com.blogapp.app.modules.signin.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.blogapp.app.R
import com.blogapp.app.appcomponents.base.BaseActivity
import com.blogapp.app.appcomponents.facebookauth.FacebookHelper
import com.blogapp.app.appcomponents.googleauth.GoogleHelper
import com.blogapp.app.databinding.ActivitySignInBinding
import com.blogapp.app.modules.signin.`data`.viewmodel.SignInVM
import com.blogapp.app.modules.signup.ui.SignUpActivity
import com.facebook.CallbackManager
import com.facebook.FacebookCallback
import com.facebook.FacebookException
import com.facebook.login.LoginManager
import com.facebook.login.LoginResult
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SignInActivity : BaseActivity<ActivitySignInBinding>(R.layout.activity_sign_in) {
  private val viewModel: SignInVM by viewModels<SignInVM>()

  private var callbackManager: CallbackManager = CallbackManager.Factory.create()


  private val facebookLogin: FacebookHelper = FacebookHelper()


  private lateinit var googleLogin: GoogleHelper

  private var callbackManager: CallbackManager = CallbackManager.Factory.create()


  private val facebookLogin: FacebookHelper = FacebookHelper()


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
