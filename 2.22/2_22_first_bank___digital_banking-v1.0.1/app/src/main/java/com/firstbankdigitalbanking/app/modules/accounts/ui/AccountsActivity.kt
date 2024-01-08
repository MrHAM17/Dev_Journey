package com.firstbankdigitalbanking.app.modules.accounts.ui

import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.base.BaseActivity
import com.firstbankdigitalbanking.app.databinding.ActivityAccountsBinding
import com.firstbankdigitalbanking.app.modules.accounts.`data`.model.AccountsRowModel
import com.firstbankdigitalbanking.app.modules.accounts.`data`.viewmodel.AccountsVM
import com.firstbankdigitalbanking.app.modules.creditcards.ui.CreditCardsActivity
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class AccountsActivity : BaseActivity<ActivityAccountsBinding>(R.layout.activity_accounts) {
  private val viewModel: AccountsVM by viewModels<AccountsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val accountsAdapter = AccountsAdapter(viewModel.accountsList.value?:mutableListOf())
    binding.recyclerAccounts.adapter = accountsAdapter
    accountsAdapter.setOnItemClickListener(
    object : AccountsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : AccountsRowModel) {
        onClickRecyclerAccounts(view, position, item)
      }
    }
    )
    viewModel.accountsList.observe(this) {
      accountsAdapter.updateData(it)
    }
    binding.accountsVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
    binding.txtSeeAll.setOnClickListener {
      val destIntent = CreditCardsActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerAccounts(
    view: View,
    position: Int,
    item: AccountsRowModel
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
      const val TAG: String = "ACCOUNTS_ACTIVITY"

    }
  }
