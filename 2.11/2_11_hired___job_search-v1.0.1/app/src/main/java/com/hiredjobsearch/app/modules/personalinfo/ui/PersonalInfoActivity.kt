package com.hiredjobsearch.app.modules.personalinfo.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import androidx.appcompat.app.AlertDialog
import com.google.android.material.snackbar.Snackbar
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseActivity
import com.hiredjobsearch.app.databinding.ActivityPersonalInfoBinding
import com.hiredjobsearch.app.extensions.NoInternetConnection
import com.hiredjobsearch.app.extensions.showProgressDialog
import com.hiredjobsearch.app.modules.personalinfo.`data`.viewmodel.PersonalInfoVM
import com.hiredjobsearch.app.network.models.fetchme.FetchMeResponse
import com.hiredjobsearch.app.network.resources.ErrorResponse
import com.hiredjobsearch.app.network.resources.SuccessResponse
import java.lang.Exception
import kotlin.String
import kotlin.Unit

class PersonalInfoActivity :
    BaseActivity<ActivityPersonalInfoBinding>(R.layout.activity_personal_info) {
  private val viewModel: PersonalInfoVM by viewModels<PersonalInfoVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.personalInfoVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageImage.setOnClickListener {
      finish()
    }
  }

  override fun addObservers(): Unit {
    var progressDialog : AlertDialog? = null
    viewModel.progressLiveData.observe(this@PersonalInfoActivity) {
      if(it) {
        progressDialog?.dismiss()
        progressDialog = null
        progressDialog = this@PersonalInfoActivity.showProgressDialog()
      } else {
        progressDialog?.dismiss()
      }
    }
    viewModel.fetchMeLiveData.observe(this@PersonalInfoActivity) {
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
    const val TAG: String = "PERSONAL_INFO_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, PersonalInfoActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
