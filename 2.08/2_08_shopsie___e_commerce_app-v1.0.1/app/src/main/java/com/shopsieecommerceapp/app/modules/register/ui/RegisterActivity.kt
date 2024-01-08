package com.shopsieecommerceapp.app.modules.register.ui

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
import com.shopsieecommerceapp.app.databinding.ActivityRegisterBinding
import com.shopsieecommerceapp.app.modules.login.ui.LoginActivity
import com.shopsieecommerceapp.app.modules.mainlanding.ui.MainLandingActivity
import com.shopsieecommerceapp.app.modules.register.`data`.viewmodel.RegisterVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class RegisterActivity : BaseActivity<ActivityRegisterBinding>(R.layout.activity_register) {
  private val viewModel: RegisterVM by viewModels<RegisterVM>()

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
    binding.registerVM = viewModel
    googleLogin = GoogleHelper(this,
    { accountInfo ->
      },{ error ->

      })
    }

    override fun setUpClicks(): Unit {
      binding.imageSocialFacebookIc.setOnClickListener {
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
        binding.imageSocialGoogleIc.setOnClickListener {
          googleLogin.login()
        }
        binding.txtConfirmation.setOnClickListener {
          val destIntent = LoginActivity.getIntent(this, null)
          startActivity(destIntent)
        }
        binding.btnRegister.setOnClickListener {
          val destIntent = MainLandingActivity.getIntent(this, null)
          startActivity(destIntent)
        }
      }

      companion object {
        const val TAG: String = "REGISTER_ACTIVITY"


        fun getIntent(context: Context, bundle: Bundle?): Intent {
          val destIntent = Intent(context, RegisterActivity::class.java)
          destIntent.putExtra("bundle", bundle)
          return destIntent
        }
      }
    }
