package com.jusplaymoviestreamingapp.app.modules.editprofile.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.widget.Toast
import androidx.activity.viewModels
import androidx.appcompat.app.AlertDialog
import com.google.android.material.snackbar.Snackbar
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseActivity
import com.jusplaymoviestreamingapp.app.appcomponents.views.ImagePickerFragmentDialog
import com.jusplaymoviestreamingapp.app.databinding.ActivityEditProfileBinding
import com.jusplaymoviestreamingapp.app.extensions.NoInternetConnection
import com.jusplaymoviestreamingapp.app.extensions.isJSONObject
import com.jusplaymoviestreamingapp.app.extensions.showProgressDialog
import com.jusplaymoviestreamingapp.app.modules.editprofile.`data`.model.SpinnerArrowdownModel
import com.jusplaymoviestreamingapp.app.modules.editprofile.`data`.viewmodel.EditProfileVM
import com.jusplaymoviestreamingapp.app.network.models.fetchme.FetchMeResponse
import com.jusplaymoviestreamingapp.app.network.resources.ErrorResponse
import com.jusplaymoviestreamingapp.app.network.resources.SuccessResponse
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
    viewModel.spinnerArrowdownList.value = mutableListOf(
    SpinnerArrowdownModel("Item1"),
    SpinnerArrowdownModel("Item2"),
    SpinnerArrowdownModel("Item3"),
    SpinnerArrowdownModel("Item4"),
    SpinnerArrowdownModel("Item5")
    )
    val spinnerArrowdownAdapter =
    SpinnerArrowdownAdapter(this,R.layout.spinner_item,viewModel.spinnerArrowdownList.value?:
    mutableListOf())
    binding.spinnerArrowdown.adapter = spinnerArrowdownAdapter
    binding.editProfileVM = viewModel
  }

  override fun setUpClicks(): Unit {


    binding.btnCamera.setOnClickListener {
      ImagePickerFragmentDialog().show(supportFragmentManager)
      { path ->//TODO HANDLE DATA
      }

    }
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
