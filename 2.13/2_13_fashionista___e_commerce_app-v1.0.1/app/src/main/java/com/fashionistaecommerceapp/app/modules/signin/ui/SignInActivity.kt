package com.fashionistaecommerceapp.app.modules.signin.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.widget.Toast
import androidx.activity.viewModels
import androidx.appcompat.app.AlertDialog
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.base.BaseActivity
import com.fashionistaecommerceapp.app.appcomponents.di.MyApp
import com.fashionistaecommerceapp.app.appcomponents.googleauth.GoogleHelper
import com.fashionistaecommerceapp.app.databinding.ActivitySignInBinding
import com.fashionistaecommerceapp.app.extensions.NoInternetConnection
import com.fashionistaecommerceapp.app.extensions.isJSONObject
import com.fashionistaecommerceapp.app.extensions.loadFragment
import com.fashionistaecommerceapp.app.extensions.showProgressDialog
import com.fashionistaecommerceapp.app.modules.forgotpassword.ui.ForgotPasswordActivity
import com.fashionistaecommerceapp.app.modules.home.ui.HomeFragment
import com.fashionistaecommerceapp.app.modules.signin.`data`.viewmodel.SignInVM
import com.fashionistaecommerceapp.app.modules.signup.ui.SignUpActivity
import com.fashionistaecommerceapp.app.network.models.createlogin.CreateLoginResponse
import com.fashionistaecommerceapp.app.network.resources.ErrorResponse
import com.fashionistaecommerceapp.app.network.resources.SuccessResponse
import com.google.android.gms.auth.api.signin.GoogleSignInAccount
import com.google.android.material.snackbar.Snackbar
import java.lang.Exception
import kotlin.Int
import kotlin.String
import kotlin.Unit
import org.json.JSONObject
import retrofit2.HttpException

class SignInActivity : BaseActivity<ActivitySignInBinding>(R.layout.activity_sign_in) {
  private val viewModel: SignInVM by viewModels<SignInVM>()

  private lateinit var googleLogin: GoogleHelper

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.signInVM = viewModel
    googleLogin = GoogleHelper(this,
    { accountInfo ->
      onSuccessGoogleAuthResponse(accountInfo)
      },{ error ->

      onErrorGoogleAuthResponse(error)
      })
    }

    override fun setUpClicks(): Unit {
      binding.onTapGoogle.setOnClickListener {
        googleLogin.login()
      }
      binding.btnArrowDown.setOnClickListener {
        finish()
      }
      binding.txtForgotPassword.setOnClickListener {
        val destIntent = ForgotPasswordActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      binding.txtConfirmation.setOnClickListener {
        val destIntent = SignUpActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }

    override fun addObservers(): Unit {
      var progressDialog : AlertDialog? = null
      viewModel.progressLiveData.observe(this@SignInActivity) {
        if(it) {
          progressDialog?.dismiss()
          progressDialog = null
          progressDialog = this@SignInActivity.showProgressDialog()
        } else {
          progressDialog?.dismiss()
        }
      }
      viewModel.createLoginLiveData.observe(this@SignInActivity) {
        if(it is SuccessResponse) {
          val response = it.getContentIfNotHandled()
          onSuccessCreateLogin(it)
        } else if(it is ErrorResponse) {
          onErrorCreateLogin(it.data ?:Exception())
        }
      }
    }

    private fun onSuccessCreateLogin(response: SuccessResponse<CreateLoginResponse>): Unit {
      viewModel.bindCreateLoginResponse(response.data)
      val destFragment = HomeFragment.getInstance(null)
      this.loadFragment(
      R.id.fragmentContainer,
      destFragment,
      bundle = destFragment.arguments,
      tag = HomeFragment.TAG,
      addToBackStack = false,
      add = false,
      enter = null,
      exit = null,
      )
    }

    private fun onErrorCreateLogin(exception: Exception): Unit {
      when(exception) {
        is NoInternetConnection -> {
          Snackbar.make(binding.root, exception.message?:"", Snackbar.LENGTH_LONG).show()
        }
        is HttpException -> {
          val errorBody = exception.response()?.errorBody()?.string()
          val errorObject = if (errorBody != null  && errorBody.isJSONObject())
          JSONObject(errorBody) else JSONObject()
          Toast.makeText(this@SignInActivity,MyApp.getInstance().getString(R.string.msg_invalid_username_or_pa),Toast.LENGTH_LONG).show()
        }
      }
    }

    private fun onSuccessGoogleAuthResponse(accountInfo: GoogleSignInAccount): Unit {
      viewModel.googleAuthResponse = accountInfo
      val destFragment = HomeFragment.getInstance(null)
      this.loadFragment(
      R.id.fragmentContainer,
      destFragment,
      bundle = destFragment.arguments,
      tag = HomeFragment.TAG,
      addToBackStack = false,
      add = false,
      enter = null,
      exit = null,
      )
    }

    private fun onErrorGoogleAuthResponse(error: Int): Unit {
      Toast.makeText(this@SignInActivity,MyApp.getInstance().getString(R.string.msg_something_went_wrong),Toast.LENGTH_LONG).show()
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
