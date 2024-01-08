package com.firstbankdigitalbanking.app.modules.settingeditprofile.ui

import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.fragment.app.viewModels
import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.base.BaseFragment
import com.firstbankdigitalbanking.app.databinding.FragmentSettingEditProfileBinding
import com.firstbankdigitalbanking.app.extensions.NoInternetConnection
import com.firstbankdigitalbanking.app.extensions.isJSONObject
import com.firstbankdigitalbanking.app.extensions.showProgressDialog
import com.firstbankdigitalbanking.app.modules.settingeditprofile.`data`.viewmodel.SettingEditProfileVM
import com.firstbankdigitalbanking.app.network.models.fetchme.FetchMeResponse
import com.firstbankdigitalbanking.app.network.resources.ErrorResponse
import com.firstbankdigitalbanking.app.network.resources.SuccessResponse
import com.google.android.material.snackbar.Snackbar
import java.lang.Exception
import kotlin.String
import kotlin.Unit
import org.json.JSONObject
import retrofit2.HttpException

class SettingEditProfileFragment :
    BaseFragment<FragmentSettingEditProfileBinding>(R.layout.fragment_setting_edit_profile) {
  private val viewModel: SettingEditProfileVM by viewModels<SettingEditProfileVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.settingEditProfileVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  override fun addObservers() {
    var progressDialog : AlertDialog? = null
    viewModel.progressLiveData.observe(requireActivity()) {
      if(it) {
        progressDialog?.dismiss()
        progressDialog = null
        progressDialog = requireActivity().showProgressDialog()
      } else  {
        progressDialog?.dismiss()
      }
    }
    viewModel.fetchMeLiveData.observe(requireActivity()) {
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
        Toast.makeText(requireActivity(),errMessage,Toast.LENGTH_LONG).show()
      }
    }
  }

  companion object {
    const val TAG: String = "SETTING_EDIT_PROFILE_FRAGMENT"

  }
}
