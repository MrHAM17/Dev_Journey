package com.jusplaymoviestreamingapp.app.modules.signup.ui

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
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseActivity
import com.jusplaymoviestreamingapp.app.appcomponents.facebookauth.FacebookHelper
import com.jusplaymoviestreamingapp.app.appcomponents.googleauth.GoogleHelper
import com.jusplaymoviestreamingapp.app.databinding.ActivitySignUpBinding
import com.jusplaymoviestreamingapp.app.extensions.NoInternetConnection
import com.jusplaymoviestreamingapp.app.extensions.isJSONObject
import com.jusplaymoviestreamingapp.app.extensions.loadFragment
import com.jusplaymoviestreamingapp.app.extensions.showProgressDialog
import com.jusplaymoviestreamingapp.app.modules.home.ui.HomeFragment
import com.jusplaymoviestreamingapp.app.modules.hometabcontainer.ui.HomeTabContainerActivity
import com.jusplaymoviestreamingapp.app.modules.login.ui.LoginActivity
import com.jusplaymoviestreamingapp.app.modules.signup.`data`.viewmodel.SignUpVM
import com.jusplaymoviestreamingapp.app.network.models.createregister.CreateRegisterResponse
import com.jusplaymoviestreamingapp.app.network.resources.ErrorResponse
import com.jusplaymoviestreamingapp.app.network.resources.SuccessResponse
import java.lang.Exception
import kotlin.Int
import kotlin.String
import kotlin.Unit
import org.json.JSONObject
import retrofit2.HttpException

class SignUpActivity : BaseActivity<ActivitySignUpBinding>(R.layout.activity_sign_up) {
  private val viewModel: SignUpVM by viewModels<SignUpVM>()

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
    binding.signUpVM = viewModel
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
        binding.btnSignUp.setOnClickListener {
          val destIntent = HomeTabContainerActivity.getIntent(this, null)
          startActivity(destIntent)
        }
        binding.txtLoginNow.setOnClickListener {
          val destIntent = LoginActivity.getIntent(this, null)
          startActivity(destIntent)
        }
      }

      override fun addObservers(): Unit {
        var progressDialog : AlertDialog? = null
        viewModel.progressLiveData.observe(this@SignUpActivity) {
          if(it) {
            progressDialog?.dismiss()
            progressDialog = null
            progressDialog = this@SignUpActivity.showProgressDialog()
          } else {
            progressDialog?.dismiss()
          }
        }
        viewModel.createRegisterLiveData.observe(this@SignUpActivity) {
          if(it is SuccessResponse) {
            val response = it.getContentIfNotHandled()
            onSuccessCreateRegister(it)
          } else if(it is ErrorResponse) {
            onErrorCreateRegister(it.data ?:Exception())
          }
        }
      }

      private fun onSuccessCreateRegister(response: SuccessResponse<CreateRegisterResponse>): Unit {
        viewModel.bindCreateRegisterResponse(response.data)
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

      private fun onErrorCreateRegister(exception: Exception): Unit {
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
