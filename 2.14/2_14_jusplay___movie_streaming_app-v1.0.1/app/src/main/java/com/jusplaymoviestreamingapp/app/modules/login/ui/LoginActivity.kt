package com.jusplaymoviestreamingapp.app.modules.login.ui

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
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseActivity
import com.jusplaymoviestreamingapp.app.appcomponents.di.MyApp
import com.jusplaymoviestreamingapp.app.appcomponents.facebookauth.FacebookHelper
import com.jusplaymoviestreamingapp.app.appcomponents.googleauth.GoogleHelper
import com.jusplaymoviestreamingapp.app.databinding.ActivityLoginBinding
import com.jusplaymoviestreamingapp.app.extensions.NoInternetConnection
import com.jusplaymoviestreamingapp.app.extensions.isJSONObject
import com.jusplaymoviestreamingapp.app.extensions.loadFragment
import com.jusplaymoviestreamingapp.app.extensions.showProgressDialog
import com.jusplaymoviestreamingapp.app.modules.forgotpassword.ui.ForgotPasswordActivity
import com.jusplaymoviestreamingapp.app.modules.home.ui.HomeFragment
import com.jusplaymoviestreamingapp.app.modules.hometabcontainer.ui.HomeTabContainerActivity
import com.jusplaymoviestreamingapp.app.modules.login.`data`.viewmodel.LoginVM
import com.jusplaymoviestreamingapp.app.modules.signup.ui.SignUpActivity
import com.jusplaymoviestreamingapp.app.network.models.createlogin.CreateLoginResponse
import com.jusplaymoviestreamingapp.app.network.resources.ErrorResponse
import com.jusplaymoviestreamingapp.app.network.resources.SuccessResponse
import java.lang.Exception
import kotlin.Int
import kotlin.String
import kotlin.Unit
import org.json.JSONObject
import retrofit2.HttpException

class LoginActivity : BaseActivity<ActivityLoginBinding>(R.layout.activity_login) {
  private val viewModel: LoginVM by viewModels<LoginVM>()

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
    binding.loginVM = viewModel
    googleLogin = GoogleHelper(this,
    { accountInfo ->
      },{ error -> 

      })
    }

    override fun setUpClicks(): Unit {
      binding..setOnClickListener {
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
        binding..setOnClickListener {
          googleLogin.login()
        }
        binding.txtForgotPassword.setOnClickListener {
          val destIntent = ForgotPasswordActivity.getIntent(this, null)
          startActivity(destIntent)
        }
        binding.btnLogin.setOnClickListener {
          val destIntent = HomeTabContainerActivity.getIntent(this, null)
          startActivity(destIntent)
        }
        binding.txtSignUpNow.setOnClickListener {
          val destIntent = SignUpActivity.getIntent(this, null)
          startActivity(destIntent)
        }
      }

      override fun addObservers() {
        var progressDialog : AlertDialog? = null
        viewModel.progressLiveData.observe(this@LoginActivity) {
          if(it) {
            progressDialog?.dismiss()
            progressDialog = null
            progressDialog = this@LoginActivity.showProgressDialog()
          } else  {
            progressDialog?.dismiss()
          }
        }
        viewModel.createLoginLiveData.observe(this@LoginActivity) {
          if(it is SuccessResponse) {
            val response = it.getContentIfNotHandled()
            onSuccessCreateLogin(it)
          } else if(it is ErrorResponse)  {
            onErrorCreateLogin(it.data ?:Exception())
          }
        }
      }

      private fun onSuccessCreateLogin(response: SuccessResponse<CreateLoginResponse>) {
        viewModel.bindCreateLoginResponse(response.data)
        val destBundle = Bundle()
        destBundle.putString("id",Gson().toJson(viewModel.createLoginLiveData.value?.getSuccessResponse()?.))
        val destFragment = HomeFragment.getInstance(destBundle)
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

      private fun onErrorCreateLogin(exception: Exception) {
        when(exception) {
          is NoInternetConnection -> {
            Snackbar.make(binding.root, exception.message?:"", Snackbar.LENGTH_LONG).show()
          }
          is HttpException -> {
            val errorBody = exception.response()?.errorBody()?.string()
            val errorObject = if (errorBody != null  && errorBody.isJSONObject())
                JSONObject(errorBody) else JSONObject()
            Toast.makeText(this@LoginActivity,MyApp.getInstance().getString(R.string.msg_invalid_username_or_pa),Toast.LENGTH_LONG).show()
          }
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
