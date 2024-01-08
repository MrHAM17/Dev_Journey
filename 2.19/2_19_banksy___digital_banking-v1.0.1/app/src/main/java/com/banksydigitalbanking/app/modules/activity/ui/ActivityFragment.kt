package com.banksydigitalbanking.app.modules.activity.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.base.BaseFragment
import com.banksydigitalbanking.app.databinding.FragmentActivityBinding
import com.banksydigitalbanking.app.modules.activity.`data`.viewmodel.ActivityVM
import kotlin.String
import kotlin.Unit

class ActivityFragment : BaseFragment<FragmentActivityBinding>(R.layout.fragment_activity) {
  private val viewModel: ActivityVM by viewModels<ActivityVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.activityVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "ACTIVITY_FRAGMENT"


    fun getInstance(bundle: Bundle?): ActivityFragment {
      val fragment = ActivityFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
