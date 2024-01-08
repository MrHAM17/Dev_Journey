package com.tikpikshortvideosocialnetworking.app.modules.signupblankform.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.appcomponents.googleauth.GoogleHelper
import com.tikpikshortvideosocialnetworking.app.databinding.ActivitySignUpBlankFormBinding
import com.tikpikshortvideosocialnetworking.app.modules.chooseyourinterest.ui.ChooseYourInterestActivity
import com.tikpikshortvideosocialnetworking.app.modules.signinblankform.ui.SignInBlankFormActivity
import com.tikpikshortvideosocialnetworking.app.modules.signupblankform.`data`.viewmodel.SignUpBlankFormVM
import kotlin.String
import kotlin.Unit

class SignUpBlankFormActivity :
    BaseActivity<ActivitySignUpBlankFormBinding>(R.layout.activity_sign_up_blank_form) {
  private val viewModel: SignUpBlankFormVM by viewModels<SignUpBlankFormVM>()

  private lateinit var googleLogin: GoogleHelper

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.signUpBlankFormVM = viewModel
    googleLogin = GoogleHelper(this,
    { accountInfo ->
      },{ error -> 

      })
    }

    override fun setUpClicks(): Unit {
      binding.imageImage2.setOnClickListener {
        googleLogin.login()
      }
      binding.txtSignIn.setOnClickListener {
        val destIntent = SignInBlankFormActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      binding.btnSignUp.setOnClickListener {
        val destIntent = ChooseYourInterestActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }

    companion object {
      const val TAG: String = "SIGN_UP_BLANK_FORM_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, SignUpBlankFormActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
