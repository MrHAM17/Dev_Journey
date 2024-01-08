package com.housitbuyrentsellproperty.app.modules.transaction.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseFragment
import com.housitbuyrentsellproperty.app.databinding.FragmentTransactionBinding
import com.housitbuyrentsellproperty.app.modules.transaction.`data`.model.TransactionRowModel
import com.housitbuyrentsellproperty.app.modules.transaction.`data`.viewmodel.TransactionVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class TransactionFragment : BaseFragment<FragmentTransactionBinding>(R.layout.fragment_transaction)
    {
  private val viewModel: TransactionVM by viewModels<TransactionVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val transactionAdapter =
    TransactionAdapter(viewModel.transactionList.value?:mutableListOf())
    binding.recyclerTransaction.adapter = transactionAdapter
    transactionAdapter.setOnItemClickListener(
    object : TransactionAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : TransactionRowModel) {
        onClickRecyclerTransaction(view, position, item)
      }
    }
    )
    viewModel.transactionList.observe(requireActivity()) {
      transactionAdapter.updateData(it)
    }
    binding.transactionVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerTransaction(
    view: View,
    position: Int,
    item: TransactionRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "TRANSACTION_FRAGMENT"

  }
}
