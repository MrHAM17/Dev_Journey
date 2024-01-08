package com.housitbuyrentsellproperty.app.modules.formempty.ui

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
import com.housitbuyrentsellproperty.app.databinding.ActivityFormEmptyBinding
import com.housitbuyrentsellproperty.app.modules.formempty.`data`.viewmodel.FormEmptyVM
import com.housitbuyrentsellproperty.app.modules.registerformempty.ui.RegisterFormEmptyActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class FormEmptyActivity : BaseActivity<ActivityFormEmptyBinding>(R.layout.activity_form_empty) {
  private val viewModel: FormEmptyVM by viewModels<FormEmptyVM>()

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
    binding.formEmptyVM = viewModel
    googleLogin = GoogleHelper(this,
    { accountInfo ->
      },{ error ->

      })
    }

    override fun setUpClicks(): Unit {
      binding.btnArrowLeft.setOnClickListener {
        finish()
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
        binding.txtRegister.setOnClickListener {
          val destIntent = RegisterFormEmptyActivity.getIntent(this, null)
          startActivity(destIntent)
        }
      }

      companion object {
        const val TAG: String = "FORM_EMPTY_ACTIVITY"


        fun getIntent(context: Context, bundle: Bundle?): Intent {
          val destIntent = Intent(context, FormEmptyActivity::class.java)
          destIntent.putExtra("bundle", bundle)
          return destIntent
        }
      }
    }
