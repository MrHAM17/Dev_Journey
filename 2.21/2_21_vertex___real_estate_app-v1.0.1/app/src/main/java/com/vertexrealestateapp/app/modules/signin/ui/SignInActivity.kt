package com.vertexrealestateapp.app.modules.signin.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.widget.Toast
import androidx.activity.viewModels
import androidx.appcompat.app.AlertDialog
import com.facebook.CallbackManager
import com.facebook.FacebookCallback
import com.facebook.FacebookException
import com.facebook.login.LoginManager
import com.facebook.login.LoginResult
import com.google.android.material.snackbar.Snackbar
import com.google.gson.Gson
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.appcomponents.di.MyApp
import com.vertexrealestateapp.app.appcomponents.facebookauth.FacebookHelper
import com.vertexrealestateapp.app.appcomponents.googleauth.GoogleHelper
import com.vertexrealestateapp.app.databinding.ActivitySignInBinding
import com.vertexrealestateapp.app.extensions.NoInternetConnection
import com.vertexrealestateapp.app.extensions.isJSONObject
import com.vertexrealestateapp.app.extensions.showProgressDialog
import com.vertexrealestateapp.app.modules.home.ui.HomeActivity
import com.vertexrealestateapp.app.modules.signin.`data`.viewmodel.SignInVM
import com.vertexrealestateapp.app.modules.signup.ui.SignUpActivity
import com.vertexrealestateapp.app.network.models.createlogin.CreateLoginResponse
import com.vertexrealestateapp.app.network.resources.ErrorResponse
import com.vertexrealestateapp.app.network.resources.SuccessResponse
import java.lang.Exception
import kotlin.Int
import kotlin.String
import kotlin.Unit
import org.json.JSONObject
import retrofit2.HttpException

class SignInActivity : BaseActivity<ActivitySignInBinding>(R.layout.activity_sign_in) {
  private val viewModel: SignInVM by viewModels<SignInVM>()

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
    binding.signInVM = viewModel
    googleLogin = GoogleHelper(this,
    { accountInfo ->
      },{ error ->

      })
    }

    override fun setUpClicks(): Unit {
      binding.btnGoogle.setOnClickListener {
        googleLogin.login()
      }
      binding.btnFacebook.setOnClickListener {
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
        binding.txtSignUp.setOnClickListener {
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
        val destBundle = Bundle()
        destBundle.putString("token",Gson().toJson(viewModel.createLoginLiveData.value?.getSuccessResponse()?.))
        destBundle.putString("id",Gson().toJson(viewModel.createLoginLiveData.value?.getSuccessResponse()?.))
        val destIntent = HomeActivity.getIntent(this, destBundle)
        startActivity(destIntent)
        finish()
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

      companion object {
        const val TAG: String = "SIGN_IN_ACTIVITY"


        fun getIntent(context: Context, bundle: Bundle?): Intent {
          val destIntent = Intent(context, SignInActivity::class.java)
          destIntent.putExtra("bundle", bundle)
          return destIntent
        }
      }
    }
