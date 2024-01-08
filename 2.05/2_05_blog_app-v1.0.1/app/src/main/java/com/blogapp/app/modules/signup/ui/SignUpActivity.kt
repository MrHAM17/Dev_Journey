package com.blogapp.app.modules.signup.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.blogapp.app.R
import com.blogapp.app.appcomponents.base.BaseActivity
import com.blogapp.app.appcomponents.facebookauth.FacebookHelper
import com.blogapp.app.appcomponents.googleauth.GoogleHelper
import com.blogapp.app.databinding.ActivitySignUpBinding
import com.blogapp.app.modules.signin.ui.SignInActivity
import com.blogapp.app.modules.signup.`data`.viewmodel.SignUpVM
import com.facebook.CallbackManager
import com.facebook.FacebookCallback
import com.facebook.FacebookException
import com.facebook.login.LoginManager
import com.facebook.login.LoginResult
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SignUpActivity : BaseActivity<ActivitySignUpBinding>(R.layout.activity_sign_up) {
  private val viewModel: SignUpVM by viewModels<SignUpVM>()

  private var callbackManager: CallbackManager = CallbackManager.Factory.create()

  private val facebookLogin: FacebookHelper = FacebookHelper()

  private lateinit var googleLogin: GoogleHelper

  private var callbackManager: CallbackManager = CallbackManager.Factory.create()

  private val facebookLogin: FacebookHelper = FacebookHelper()

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
        binding.btnSignUpWithGoogle.setOnClickListener {
          googleLogin.login()
        }
        binding.btnSignUpWithFacebook.setOnClickListener {
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
            binding.txtSignIn.setOnClickListener {
              val destIntent = SignInActivity.getIntent(this, null)
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
