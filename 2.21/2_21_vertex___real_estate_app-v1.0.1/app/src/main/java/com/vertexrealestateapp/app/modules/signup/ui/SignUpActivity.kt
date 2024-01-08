package com.vertexrealestateapp.app.modules.signup.ui

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
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.appcomponents.facebookauth.FacebookHelper
import com.vertexrealestateapp.app.appcomponents.googleauth.GoogleHelper
import com.vertexrealestateapp.app.databinding.ActivitySignUpBinding
import com.vertexrealestateapp.app.extensions.NoInternetConnection
import com.vertexrealestateapp.app.extensions.isJSONObject
import com.vertexrealestateapp.app.extensions.showProgressDialog
import com.vertexrealestateapp.app.modules.home.ui.HomeActivity
import com.vertexrealestateapp.app.modules.signin.ui.SignInActivity
import com.vertexrealestateapp.app.modules.signup.`data`.viewmodel.SignUpVM
import com.vertexrealestateapp.app.network.models.createregister.CreateRegisterResponse
import com.vertexrealestateapp.app.network.resources.ErrorResponse
import com.vertexrealestateapp.app.network.resources.SuccessResponse
import java.lang.Exception
import kotlin.Int
import kotlin.String
import kotlin.Unit
import org.json.JSONObject
import retrofit2.HttpException

class SignUpActivity : BaseActivity<ActivitySignUpBinding>(R.layout.activity_sign_up) {
  private val viewModel: SignUpVM by viewModels<SignUpVM>()

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
    binding.signUpVM = viewModel
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
          val destIntent = SignInActivity.getIntent(this, null)
          startActivity(destIntent)
        }
      }

      override fun addObservers() {
        var progressDialog : AlertDialog? = null
        viewModel.progressLiveData.observe(this@SignUpActivity) {
          if(it) {
            progressDialog?.dismiss()
            progressDialog = null
            progressDialog = this@SignUpActivity.showProgressDialog()
          } else  {
            progressDialog?.dismiss()
          }
        }
        viewModel.createRegisterLiveData.observe(this@SignUpActivity) {
          if(it is SuccessResponse) {
            val response = it.getContentIfNotHandled()
            onSuccessCreateRegister(it)
          } else if(it is ErrorResponse)  {
            onErrorCreateRegister(it.data ?:Exception())
          }
        }
      }

      private fun onSuccessCreateRegister(response: SuccessResponse<CreateRegisterResponse>) {
        viewModel.bindCreateRegisterResponse(response.data)
        val destIntent = HomeActivity.getIntent(this, null)
        startActivity(destIntent)
        finish()
      }

      private fun onErrorCreateRegister(exception: Exception) {
        when(exception) {
          is NoInternetConnection -> {
            Snackbar.make(binding.root, exception.message?:"", Snackbar.LENGTH_LONG).show()
          }
          is HttpException -> {
            val errorBody = exception.response()?.errorBody()?.string()
            val errorObject = if (errorBody != null  && errorBody.isJSONObject())
                JSONObject(errorBody) else JSONObject()
            val errMessage = if(!errorObject.optString("message").isNullOrEmpty()) {
              errorObject.optString("message").toString()
            } else {
               exception.response()?.message()?:""
            }
            Toast.makeText(this@SignUpActivity,errMessage,Toast.LENGTH_LONG).show()
          }
        }
      }

      companion object {
        const val TAG: String = "SIGN_UP_ACTIVITY"


        fun getIntent(context: Context, bundle: Bundle?): Intent {
          val destIntent = Intent(context, SignUpActivity::class.java)
          destIntent.putExtra("bundle", bundle)
          return destIntent
        }
      }
    }
