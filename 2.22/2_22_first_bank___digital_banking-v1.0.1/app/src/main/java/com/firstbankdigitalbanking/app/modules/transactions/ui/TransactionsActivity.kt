package com.firstbankdigitalbanking.app.modules.transactions.ui

import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.base.BaseActivity
import com.firstbankdigitalbanking.app.databinding.ActivityTransactionsBinding
import com.firstbankdigitalbanking.app.modules.creditcards.ui.CreditCardsActivity
import com.firstbankdigitalbanking.app.modules.transactions.`data`.model.ArRowModel
import com.firstbankdigitalbanking.app.modules.transactions.`data`.model.Balance1RowModel
import com.firstbankdigitalbanking.app.modules.transactions.`data`.viewmodel.TransactionsVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class TransactionsActivity :
    BaseActivity<ActivityTransactionsBinding>(R.layout.activity_transactions) {
  private val viewModel: TransactionsVM by viewModels<TransactionsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val balanceAdapter = BalanceAdapter(viewModel.balanceList.value?:mutableListOf())
    binding.recyclerBalance.adapter = balanceAdapter
    balanceAdapter.setOnItemClickListener(
    object : BalanceAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Balance1RowModel) {
        onClickRecyclerBalance(view, position, item)
      }
    }
    )
    viewModel.balanceList.observe(this) {
      balanceAdapter.updateData(it)
    }
    val arrowAdapter = ArrowAdapter(viewModel.arrowList.value?:mutableListOf())
    binding.recyclerArrow.adapter = arrowAdapter
    arrowAdapter.setOnItemClickListener(
    object : ArrowAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ArRowModel) {
        onClickRecyclerArrow(view, position, item)
      }
    }
    )
    viewModel.arrowList.observe(this) {
      arrowAdapter.updateData(it)
    }
    binding.transactionsVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
    binding.txtSeeAll.setOnClickListener {
      val destIntent = CreditCardsActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerBalance(
    view: View,
    position: Int,
    item: Balance1RowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerArrow(
    view: View,
    position: Int,
    item: ArRowModel
  ): Unit {
    when(view.id) {
    }
  }

  private fun setUpSearchViewSearchListener(): Unit {
    binding.searchViewSearch.setOnQueryTextListener(object : SearchView.OnQueryTextListener {
      override fun onQueryTextSubmit(p0 : String) : Boolean {
        // Performs search when user hit
        // the search button on the keyboard
        return false
      }
      override fun onQueryTextChange(p0 : String) : Boolean {
        // Start filtering the list as user
        // start entering the characters
        return false
      }
      })
    }

    companion object {
      const val TAG: String = "TRANSACTIONS_ACTIVITY"

    }
  }
