package com.comforthotelbookingapp.app.modules.editprofile.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.widget.Toast
import androidx.activity.viewModels
import androidx.appcompat.app.AlertDialog
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseActivity
import com.comforthotelbookingapp.app.databinding.ActivityEditProfileBinding
import com.comforthotelbookingapp.app.extensions.NoInternetConnection
import com.comforthotelbookingapp.app.extensions.hideKeyboard
import com.comforthotelbookingapp.app.extensions.isJSONObject
import com.comforthotelbookingapp.app.extensions.showProgressDialog
import com.comforthotelbookingapp.app.modules.editprofile.`data`.model.SpinnerCountryModel
import com.comforthotelbookingapp.app.modules.editprofile.`data`.model.SpinnerGenderModel
import com.comforthotelbookingapp.app.modules.editprofile.`data`.viewmodel.EditProfileVM
import com.comforthotelbookingapp.app.network.models.fetchme.FetchMeResponse
import com.comforthotelbookingapp.app.network.resources.ErrorResponse
import com.comforthotelbookingapp.app.network.resources.SuccessResponse
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
    viewModel.spinnerCountryList.value = mutableListOf(
    SpinnerCountryModel("Item1"),
    SpinnerCountryModel("Item2"),
    SpinnerCountryModel("Item3"),
    SpinnerCountryModel("Item4"),
    SpinnerCountryModel("Item5")
    )
    val spinnerCountryAdapter =
    SpinnerCountryAdapter(this,R.layout.spinner_item,viewModel.spinnerCountryList.value?:
    mutableListOf())
    binding.spinnerCountry.adapter = spinnerCountryAdapter
    viewModel.spinnerGenderList.value = mutableListOf(
    SpinnerGenderModel("Item1"),
    SpinnerGenderModel("Item2"),
    SpinnerGenderModel("Item3"),
    SpinnerGenderModel("Item4"),
    SpinnerGenderModel("Item5")
    )
    val spinnerGenderAdapter =
    SpinnerGenderAdapter(this,R.layout.spinner_item,viewModel.spinnerGenderList.value?:
    mutableListOf())
    binding.spinnerGender.adapter = spinnerGenderAdapter
    binding.editProfileVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.included.setOnClickListener {
      this@EditProfileActivity.hideKeyboard()
      viewModel.callFetchMeApi()
    }
    binding.included.setOnClickListener {
      finish()
    }
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  override fun addObservers(): Unit {
    var progressDialog : AlertDialog? = null
    viewModel.progressLiveData.observe(this@EditProfileActivity) {
      if(it) {
        progressDialog?.dismiss()
        progressDialog = null
        progressDialog = this@EditProfileActivity.showProgressDialog()
      } else {
        progressDialog?.dismiss()
      }
    }
    viewModel.fetchMeLiveData.observe(this@EditProfileActivity) {
      if(it is SuccessResponse) {
        val response = it.getContentIfNotHandled()
        onSuccessFetchMe(it)
      } else if(it is ErrorResponse) {
        onErrorFetchMe(it.data ?:Exception())
      }
    }
  }

  private fun onSuccessFetchMe(response: SuccessResponse<FetchMeResponse>): Unit {
    viewModel.bindFetchMeResponse(response.data)
  }

  private fun onErrorFetchMe(exception: Exception): Unit {
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
