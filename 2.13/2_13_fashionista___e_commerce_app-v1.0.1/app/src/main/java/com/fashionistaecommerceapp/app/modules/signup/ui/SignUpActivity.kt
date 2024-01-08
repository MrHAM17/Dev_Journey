package com.fashionistaecommerceapp.app.modules.signup.ui

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
import com.fashionistaecommerceapp.app.databinding.ActivitySignUpBinding
import com.fashionistaecommerceapp.app.extensions.NoInternetConnection
import com.fashionistaecommerceapp.app.extensions.isJSONObject
import com.fashionistaecommerceapp.app.extensions.loadFragment
import com.fashionistaecommerceapp.app.extensions.showProgressDialog
import com.fashionistaecommerceapp.app.modules.home.ui.HomeFragment
import com.fashionistaecommerceapp.app.modules.information.ui.InformationActivity
import com.fashionistaecommerceapp.app.modules.signin.ui.SignInActivity
import com.fashionistaecommerceapp.app.modules.signup.`data`.viewmodel.SignUpVM
import com.fashionistaecommerceapp.app.network.models.createregister.CreateRegisterResponse
import com.fashionistaecommerceapp.app.network.resources.ErrorResponse
import com.fashionistaecommerceapp.app.network.resources.SuccessResponse
import com.google.android.gms.auth.api.signin.GoogleSignInAccount
import com.google.android.material.snackbar.Snackbar
import com.google.gson.Gson
import java.lang.Exception
import kotlin.Int
import kotlin.String
import kotlin.Unit
import org.json.JSONObject
import retrofit2.HttpException

class SignUpActivity : BaseActivity<ActivitySignUpBinding>(R.layout.activity_sign_up) {
  private val viewModel: SignUpVM by viewModels<SignUpVM>()

  private lateinit var googleLogin: GoogleHelper

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.signUpVM = viewModel
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
      binding.txtConfirmation.setOnClickListener {
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
      val destBundle = Bundle()
      destBundle.putString("id",Gson().toJson(viewModel.createRegisterLiveData.value?.getSuccessResponse()?.))
      val destIntent = InformationActivity.getIntent(this, destBundle)
      destIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK)
      startActivity(destIntent)
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

    private fun onSuccessGoogleAuthResponse(accountInfo: GoogleSignInAccount) {
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

    private fun onErrorGoogleAuthResponse(error: Int) {
      Toast.makeText(this@SignUpActivity,MyApp.getInstance().getString(R.string.msg_something_went_wrong),Toast.LENGTH_LONG).show()
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
