package com.shopsieecommerceapp.app.modules.signup.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.facebook.CallbackManager
import com.facebook.FacebookCallback
import com.facebook.FacebookException
import com.facebook.login.LoginManager
import com.facebook.login.LoginResult
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseActivity
import com.shopsieecommerceapp.app.appcomponents.facebookauth.FacebookHelper
import com.shopsieecommerceapp.app.appcomponents.googleauth.GoogleHelper
import com.shopsieecommerceapp.app.databinding.ActivitySignupBinding
import com.shopsieecommerceapp.app.modules.homecontainer.ui.HomeContainerActivity
import com.shopsieecommerceapp.app.modules.login.ui.LoginActivity
import com.shopsieecommerceapp.app.modules.signup.`data`.viewmodel.SignupVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SignupActivity : BaseActivity<ActivitySignupBinding>(R.layout.activity_signup) {
  private val viewModel: SignupVM by viewModels<SignupVM>()

  private lateinit var googleLogin: GoogleHelper

  private var callbackManager: CallbackManager = CallbackManager.Factory.create()


  private val facebookLogin: FacebookHelper = FacebookHelper()


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
    binding.signupVM = viewModel
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
        binding.imageFacebook.setOnClickListener {
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
          binding.imageGoogle.setOnClickListener {
            googleLogin.login()
          }
          binding..setOnClickListener {
            googleLogin.login()
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
            binding.btnCreateAnAccount.setOnClickListener {
              val destIntent = HomeContainerActivity.getIntent(this, null)
              startActivity(destIntent)
            }
            binding.txtAlreadyHaveAn.setOnClickListener {
              val destIntent = LoginActivity.getIntent(this, null)
              startActivity(destIntent)
            }
          }

          companion object {
            const val TAG: String = "SIGNUP_ACTIVITY"


            fun getIntent(context: Context, bundle: Bundle?): Intent {
              val destIntent = Intent(context, SignupActivity::class.java)
              destIntent.putExtra("bundle", bundle)
              return destIntent
            }
          }
        }
