package com.tikpikshortvideosocialnetworking.app.modules.letsin.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.facebook.CallbackManager
import com.facebook.FacebookCallback
import com.facebook.FacebookException
import com.facebook.login.LoginManager
import com.facebook.login.LoginResult
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.appcomponents.facebookauth.FacebookHelper
import com.tikpikshortvideosocialnetworking.app.appcomponents.googleauth.GoogleHelper
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityLetsInBinding
import com.tikpikshortvideosocialnetworking.app.modules.letsin.`data`.viewmodel.LetsInVM
import com.tikpikshortvideosocialnetworking.app.modules.signinblankform.ui.SignInBlankFormActivity
import com.tikpikshortvideosocialnetworking.app.modules.signupblankform.ui.SignUpBlankFormActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class LetsInActivity : BaseActivity<ActivityLetsInBinding>(R.layout.activity_lets_in) {
  private val viewModel: LetsInVM by viewModels<LetsInVM>()

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
    binding.letsInVM = viewModel
    googleLogin = GoogleHelper(this,
    { accountInfo ->
      },{ error -> 

      })
    }

    override fun setUpClicks(): Unit {
      binding.btnContinueWithFacebook.setOnClickListener {
        googleLogin.login()
      }
      binding.txtSignUp.setOnClickListener {
        val destIntent = SignUpBlankFormActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      binding.btnContinueWithGoogle.setOnClickListener {
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
        binding.btnSignInWithPassword.setOnClickListener {
          val destIntent = SignInBlankFormActivity.getIntent(this, null)
          startActivity(destIntent)
        }
      }

      companion object {
        const val TAG: String = "LETS_IN_ACTIVITY"


        fun getIntent(context: Context, bundle: Bundle?): Intent {
          val destIntent = Intent(context, LetsInActivity::class.java)
          destIntent.putExtra("bundle", bundle)
          return destIntent
        }
      }
    }
