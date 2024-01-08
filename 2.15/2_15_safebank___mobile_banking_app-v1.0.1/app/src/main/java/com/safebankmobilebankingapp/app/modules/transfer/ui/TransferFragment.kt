package com.safebankmobilebankingapp.app.modules.transfer.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.base.BaseFragment
import com.safebankmobilebankingapp.app.databinding.FragmentTransferBinding
import com.safebankmobilebankingapp.app.modules.sendmoney.ui.SendMoneyActivity
import com.safebankmobilebankingapp.app.modules.transfer.`data`.viewmodel.TransferVM
import kotlin.String
import kotlin.Unit

class TransferFragment : BaseFragment<FragmentTransferBinding>(R.layout.fragment_transfer) {
  private val viewModel: TransferVM by viewModels<TransferVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.transferVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      val destIntent = SendMoneyActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  companion object {
    const val TAG: String = "TRANSFER_FRAGMENT"


    fun getInstance(bundle: Bundle?): TransferFragment {
      val fragment = TransferFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
