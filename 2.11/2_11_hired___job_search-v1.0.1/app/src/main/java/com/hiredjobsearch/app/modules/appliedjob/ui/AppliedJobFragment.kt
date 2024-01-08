package com.hiredjobsearch.app.modules.appliedjob.ui

import androidx.fragment.app.viewModels
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseFragment
import com.hiredjobsearch.app.databinding.FragmentAppliedJobBinding
import com.hiredjobsearch.app.modules.appliedjob.`data`.viewmodel.AppliedJobVM
import kotlin.String
import kotlin.Unit

class AppliedJobFragment : BaseFragment<FragmentAppliedJobBinding>(R.layout.fragment_applied_job) {
  private val viewModel: AppliedJobVM by viewModels<AppliedJobVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.appliedJobVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "APPLIED_JOB_FRAGMENT"

  }
}
