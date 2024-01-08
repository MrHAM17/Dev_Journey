package com.hiredjobsearch.app.modules.saveddetailjob.ui

import androidx.fragment.app.viewModels
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseFragment
import com.hiredjobsearch.app.databinding.FragmentSavedDetailJobBinding
import com.hiredjobsearch.app.modules.applyjob.ui.ApplyJobActivity
import com.hiredjobsearch.app.modules.saveddetailjob.`data`.viewmodel.SavedDetailJobVM
import kotlin.String
import kotlin.Unit

class SavedDetailJobFragment :
    BaseFragment<FragmentSavedDetailJobBinding>(R.layout.fragment_saved_detail_job) {
  private val viewModel: SavedDetailJobVM by viewModels<SavedDetailJobVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.savedDetailJobVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnApplyNow.setOnClickListener {
      val destIntent = ApplyJobActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  companion object {
    const val TAG: String = "SAVED_DETAIL_JOB_FRAGMENT"

  }
}
