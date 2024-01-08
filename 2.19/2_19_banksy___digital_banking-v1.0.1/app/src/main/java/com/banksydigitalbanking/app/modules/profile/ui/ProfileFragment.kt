package com.banksydigitalbanking.app.modules.profile.ui

import android.os.Bundle
import androidx.appcompat.app.AlertDialog
import androidx.fragment.app.viewModels
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.base.BaseFragment
import com.banksydigitalbanking.app.databinding.FragmentProfileBinding
import com.banksydigitalbanking.app.extensions.NoInternetConnection
import com.banksydigitalbanking.app.extensions.showProgressDialog
import com.banksydigitalbanking.app.modules.profile.`data`.viewmodel.ProfileVM
import com.banksydigitalbanking.app.network.models.fetchme.FetchMeResponse
import com.banksydigitalbanking.app.network.resources.ErrorResponse
import com.banksydigitalbanking.app.network.resources.SuccessResponse
import com.google.android.material.snackbar.Snackbar
import java.lang.Exception
import kotlin.String
import kotlin.Unit

class ProfileFragment : BaseFragment<FragmentProfileBinding>(R.layout.fragment_profile) {
  private val viewModel: ProfileVM by viewModels<ProfileVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.profileVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  override fun addObservers(): Unit {
    var progressDialog : AlertDialog? = null
    viewModel.progressLiveData.observe(requireActivity()) {
      if(it) {
        progressDialog?.dismiss()
        progressDialog = null
        progressDialog = requireActivity().showProgressDialog()
      } else {
        progressDialog?.dismiss()
      }
    }
    viewModel.fetchMeLiveData.observe(requireActivity()) {
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
    }
  }

  companion object {
    const val TAG: String = "PROFILE_FRAGMENT"


    fun getInstance(bundle: Bundle?): ProfileFragment {
      val fragment = ProfileFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
