package com.vertexrealestateapp.app.modules.editprofile.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.widget.Toast
import androidx.activity.viewModels
import androidx.appcompat.app.AlertDialog
import com.google.android.material.snackbar.Snackbar
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityEditProfileBinding
import com.vertexrealestateapp.app.extensions.NoInternetConnection
import com.vertexrealestateapp.app.extensions.isJSONObject
import com.vertexrealestateapp.app.extensions.showProgressDialog
import com.vertexrealestateapp.app.modules.editprofile.`data`.viewmodel.EditProfileVM
import com.vertexrealestateapp.app.network.models.fetchme.FetchMeResponse
import com.vertexrealestateapp.app.network.resources.ErrorResponse
import com.vertexrealestateapp.app.network.resources.SuccessResponse
import java.lang.Exception
import kotlin.String
import kotlin.Unit
import org.json.JSONObject
import retrofit2.HttpException

class EditProfileActivity : BaseActivity<ActivityEditProfileBinding>(R.layout.activity_edit_profile)
    {
  private val viewModel: EditProfileVM by viewModels<EditProfileVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.editProfileVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  override fun addObservers() {
    var progressDialog : AlertDialog? = null
    viewModel.progressLiveData.observe(this@EditProfileActivity) {
      if(it) {
        progressDialog?.dismiss()
        progressDialog = null
        progressDialog = this@EditProfileActivity.showProgressDialog()
      } else  {
        progressDialog?.dismiss()
      }
    }
    viewModel.fetchMeLiveData.observe(this@EditProfileActivity) {
      if(it is SuccessResponse) {
        val response = it.getContentIfNotHandled()
        onSuccessFetchMe(it)
      } else if(it is ErrorResponse)  {
        onErrorFetchMe(it.data ?:Exception())
      }
    }
  }

  private fun onSuccessFetchMe(response: SuccessResponse<FetchMeResponse>) {
    viewModel.bindFetchMeResponse(response.data)
  }

  private fun onErrorFetchMe(exception: Exception) {
    when(exception) {
      is NoInternetConnection -> {
        Snackbar.make(binding.root, exception.message?:"", Snackbar.LENGTH_LONG).show()
      }
      is HttpException -> {
        val errorBody = exception.response()?.errorBody()?.string()
        val errorObject = if (errorBody != null  && errorBody.isJSONObject()) JSONObject(errorBody)
            else JSONObject()
        val errMessage = if(!errorObject.optString("message").isNullOrEmpty()) {
          errorObject.optString("message").toString()
        } else {
           exception.response()?.message()?:""
        }
        Toast.makeText(this@EditProfileActivity,errMessage,Toast.LENGTH_LONG).show()
      }
    }
  }

  companion object {
    const val TAG: String = "EDIT_PROFILE_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, EditProfileActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
