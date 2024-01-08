package com.hiredjobsearch.app.modules.enterotp.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseFragment
import com.hiredjobsearch.app.databinding.FragmentEnterOtpBinding
import com.hiredjobsearch.app.modules.enterotp.`data`.viewmodel.EnterOtpVM
import com.hiredjobsearch.app.modules.jobtype.ui.JobTypeActivity
import kotlin.String
import kotlin.Unit

class EnterOtpFragment : BaseFragment<FragmentEnterOtpBinding>(R.layout.fragment_enter_otp) {
  private val viewModel: EnterOtpVM by viewModels<EnterOtpVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.enterOtpVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnContinue.setOnClickListener {
      val destIntent = JobTypeActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  companion object {
    const val TAG: String = "ENTER_OTP_FRAGMENT"


    fun getInstance(bundle: Bundle?): EnterOtpFragment {
      val fragment = EnterOtpFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
