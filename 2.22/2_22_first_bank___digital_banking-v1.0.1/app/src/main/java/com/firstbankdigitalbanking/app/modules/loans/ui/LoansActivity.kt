package com.firstbankdigitalbanking.app.modules.loans.ui

import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.base.BaseActivity
import com.firstbankdigitalbanking.app.databinding.ActivityLoansBinding
import com.firstbankdigitalbanking.app.modules.loans.`data`.model.LoansRowModel
import com.firstbankdigitalbanking.app.modules.loans.`data`.viewmodel.LoansVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class LoansActivity : BaseActivity<ActivityLoansBinding>(R.layout.activity_loans) {
  private val viewModel: LoansVM by viewModels<LoansVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val loansAdapter = LoansAdapter(viewModel.loansList.value?:mutableListOf())
    binding.recyclerLoans.adapter = loansAdapter
    loansAdapter.setOnItemClickListener(
    object : LoansAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : LoansRowModel) {
        onClickRecyclerLoans(view, position, item)
      }
    }
    )
    viewModel.loansList.observe(this) {
      loansAdapter.updateData(it)
    }
    binding.loansVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerLoans(
    view: View,
    position: Int,
    item: LoansRowModel
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
      const val TAG: String = "LOANS_ACTIVITY"

    }
  }
