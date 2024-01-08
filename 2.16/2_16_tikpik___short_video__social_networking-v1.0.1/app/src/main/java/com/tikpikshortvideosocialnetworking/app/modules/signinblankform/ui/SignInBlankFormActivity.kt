package com.tikpikshortvideosocialnetworking.app.modules.signinblankform.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.appcomponents.googleauth.GoogleHelper
import com.tikpikshortvideosocialnetworking.app.databinding.ActivitySignInBlankFormBinding
import com.tikpikshortvideosocialnetworking.app.modules.chooseyourinterest.ui.ChooseYourInterestActivity
import com.tikpikshortvideosocialnetworking.app.modules.forgotpasswordmethods.ui.ForgotPasswordMethodsActivity
import com.tikpikshortvideosocialnetworking.app.modules.signinblankform.`data`.viewmodel.SignInBlankFormVM
import com.tikpikshortvideosocialnetworking.app.modules.signupblankform.ui.SignUpBlankFormActivity
import kotlin.String
import kotlin.Unit

class SignInBlankFormActivity :
    BaseActivity<ActivitySignInBlankFormBinding>(R.layout.activity_sign_in_blank_form) {
  private val viewModel: SignInBlankFormVM by viewModels<SignInBlankFormVM>()

  private lateinit var googleLogin: GoogleHelper

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.signInBlankFormVM = viewModel
    googleLogin = GoogleHelper(this,
    { accountInfo ->
      },{ error ->

      })
    }

    override fun setUpClicks(): Unit {
      binding.imageImage2.setOnClickListener {
        googleLogin.login()
      }
      binding.txtSignUp.setOnClickListener {
        val destIntent = SignUpBlankFormActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      binding.txtForgotThePassword.setOnClickListener {
        val destIntent = ForgotPasswordMethodsActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      binding.btnSignIn.setOnClickListener {
        val destIntent = ChooseYourInterestActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }

    companion object {
      const val TAG: String = "SIGN_IN_BLANK_FORM_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, SignInBlankFormActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
