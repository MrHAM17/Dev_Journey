package com.banksydigitalbanking.app.modules.receivemoneyrequest.ui

import androidx.fragment.app.viewModels
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.base.BaseFragment
import com.banksydigitalbanking.app.databinding.FragmentReceiveMoneyRequestBinding
import com.banksydigitalbanking.app.modules.receivemoneyrequest.`data`.viewmodel.ReceiveMoneyRequestVM
import com.banksydigitalbanking.app.modules.requestsent.ui.RequestSentActivity
import kotlin.String
import kotlin.Unit

class ReceiveMoneyRequestFragment :
    BaseFragment<FragmentReceiveMoneyRequestBinding>(R.layout.fragment_receive_money_request) {
  private val viewModel: ReceiveMoneyRequestVM by viewModels<ReceiveMoneyRequestVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.receiveMoneyRequestVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnSend.setOnClickListener {
      val destIntent = RequestSentActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  companion object {
    const val TAG: String = "RECEIVE_MONEY_REQUEST_FRAGMENT"

  }
}
