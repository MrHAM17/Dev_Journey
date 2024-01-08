package com.safebankmobilebankingapp.app.modules.nationalbank.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.base.BaseFragment
import com.safebankmobilebankingapp.app.databinding.FragmentNationalBankBinding
import com.safebankmobilebankingapp.app.modules.nationalbank.`data`.viewmodel.NationalBankVM
import kotlin.String
import kotlin.Unit

class NationalBankFragment :
    BaseFragment<FragmentNationalBankBinding>(R.layout.fragment_national_bank) {
  private val viewModel: NationalBankVM by viewModels<NationalBankVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.nationalBankVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      requireActivity().onBackPressed()
    }
  }

  companion object {
    const val TAG: String = "NATIONAL_BANK_FRAGMENT"


    fun getInstance(bundle: Bundle?): NationalBankFragment {
      val fragment = NationalBankFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
