package com.banksydigitalbanking.app.modules.editprofile.ui

import android.widget.Toast
import androidx.activity.viewModels
import androidx.appcompat.app.AlertDialog
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.base.BaseActivity
import com.banksydigitalbanking.app.appcomponents.di.MyApp
import com.banksydigitalbanking.app.databinding.ActivityEditProfileBinding
import com.banksydigitalbanking.app.extensions.NoInternetConnection
import com.banksydigitalbanking.app.extensions.isJSONObject
import com.banksydigitalbanking.app.extensions.showProgressDialog
import com.banksydigitalbanking.app.modules.editprofile.`data`.viewmodel.EditProfileVM
import com.banksydigitalbanking.app.network.models.fetchme.FetchMeResponse
import com.banksydigitalbanking.app.network.resources.ErrorResponse
import com.banksydigitalbanking.app.network.resources.SuccessResponse
import com.google.android.material.snackbar.Snackbar
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
        Toast.makeText(this@EditProfileActivity,MyApp.getInstance().getString(R.string.msg_something_went_wrong),Toast.LENGTH_LONG).show()
      }
    }
  }

  companion object {
    const val TAG: String = "EDIT_PROFILE_ACTIVITY"

  }
}
