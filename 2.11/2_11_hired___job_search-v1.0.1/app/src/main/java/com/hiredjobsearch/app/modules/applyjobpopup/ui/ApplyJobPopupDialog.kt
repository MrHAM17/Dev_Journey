package com.hiredjobsearch.app.modules.applyjobpopup.ui

import android.content.Context
import android.os.Bundle
import androidx.fragment.app.viewModels
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseDialogFragment
import com.hiredjobsearch.app.databinding.DialogApplyJobPopupBinding
import com.hiredjobsearch.app.modules.applyjobpopup.`data`.viewmodel.ApplyJobPopupVM
import kotlin.String
import kotlin.Unit

class ApplyJobPopupDialog :
    BaseDialogFragment<DialogApplyJobPopupBinding>(R.layout.dialog_apply_job_popup) {
  private val viewModel: ApplyJobPopupVM by viewModels<ApplyJobPopupVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.applyJobPopupVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "APPLY_JOB_POPUP_DIALOG"


    fun getInstance(bundle: Bundle?): ApplyJobPopupDialog {
      val fragment = ApplyJobPopupDialog()
      fragment.arguments = bundle
      return fragment
    }
  }
}
