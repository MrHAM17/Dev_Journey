package com.shopsieecommerceapp.app.modules.login.ui

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
import com.shopsieecommerceapp.app.databinding.ActivityLoginBinding
import com.shopsieecommerceapp.app.modules.homecontainer.ui.HomeContainerActivity
import com.shopsieecommerceapp.app.modules.login.`data`.viewmodel.LoginVM
import com.shopsieecommerceapp.app.modules.signup.ui.SignupActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class LoginActivity : BaseActivity<ActivityLoginBinding>(R.layout.activity_login) {
  private val viewModel: LoginVM by viewModels<LoginVM>()

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
    binding.loginVM = viewModel
    googleLogin = GoogleHelper(this,
    { accountInfo ->
      },{ error -> 

      })
    }

    override fun setUpClicks(): Unit {
      binding.imageGoogle.setOnClickListener {
        googleLogin.login()
      }
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
        binding.btnLogin.setOnClickListener {
          val destIntent = HomeContainerActivity.getIntent(this, null)
          startActivity(destIntent)
        }
        binding.btnCreateAnAccount.setOnClickListener {
          val destIntent = SignupActivity.getIntent(this, null)
          startActivity(destIntent)
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
