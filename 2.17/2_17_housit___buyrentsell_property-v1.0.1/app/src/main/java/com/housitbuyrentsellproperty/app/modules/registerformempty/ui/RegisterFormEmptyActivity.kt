package com.housitbuyrentsellproperty.app.modules.registerformempty.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.facebook.CallbackManager
import com.facebook.FacebookCallback
import com.facebook.FacebookException
import com.facebook.login.LoginManager
import com.facebook.login.LoginResult
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.appcomponents.facebookauth.FacebookHelper
import com.housitbuyrentsellproperty.app.appcomponents.googleauth.GoogleHelper
import com.housitbuyrentsellproperty.app.databinding.ActivityRegisterFormEmptyBinding
import com.housitbuyrentsellproperty.app.modules.formotp.ui.FormOtpActivity
import com.housitbuyrentsellproperty.app.modules.login.ui.LoginActivity
import com.housitbuyrentsellproperty.app.modules.registerformempty.`data`.viewmodel.RegisterFormEmptyVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class RegisterFormEmptyActivity :
    BaseActivity<ActivityRegisterFormEmptyBinding>(R.layout.activity_register_form_empty) {
  private val viewModel: RegisterFormEmptyVM by viewModels<RegisterFormEmptyVM>()

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
    binding.registerFormEmptyVM = viewModel
    googleLogin = GoogleHelper(this,
    { accountInfo ->
      },{ error ->

      })
    }

    override fun setUpClicks(): Unit {
      binding.txtRegister.setOnClickListener {
        val destIntent = LoginActivity.getIntent(this, null)
        startActivity(destIntent)
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
        binding.imageGoogle.setOnClickListener {
          googleLogin.login()
        }
        binding.btnArrowLeft.setOnClickListener {
          finish()
        }
        binding.btnRegister.setOnClickListener {
          val destIntent = FormOtpActivity.getIntent(this, null)
          startActivity(destIntent)
        }
      }

      companion object {
        const val TAG: String = "REGISTER_FORM_EMPTY_ACTIVITY"


        fun getIntent(context: Context, bundle: Bundle?): Intent {
          val destIntent = Intent(context, RegisterFormEmptyActivity::class.java)
          destIntent.putExtra("bundle", bundle)
          return destIntent
        }
      }
    }
