package com.firstbankdigitalbanking.app.modules.services.ui

import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.base.BaseActivity
import com.firstbankdigitalbanking.app.databinding.ActivityServicesBinding
import com.firstbankdigitalbanking.app.modules.services.`data`.model.LifeinsurancefilledRowModel
import com.firstbankdigitalbanking.app.modules.services.`data`.model.LoanoneRowModel
import com.firstbankdigitalbanking.app.modules.services.`data`.viewmodel.ServicesVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ServicesActivity : BaseActivity<ActivityServicesBinding>(R.layout.activity_services) {
  private val viewModel: ServicesVM by viewModels<ServicesVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val lifeInsuranceFilledAdapter =
    LifeInsuranceFilledAdapter(viewModel.lifeInsuranceFilledList.value?:mutableListOf())
    binding.recyclerLifeInsuranceFilled.adapter = lifeInsuranceFilledAdapter
    lifeInsuranceFilledAdapter.setOnItemClickListener(
    object : LifeInsuranceFilledAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : LifeinsurancefilledRowModel) {
        onClickRecyclerLifeInsuranceFilled(view, position, item)
      }
    }
    )
    viewModel.lifeInsuranceFilledList.observe(this) {
      lifeInsuranceFilledAdapter.updateData(it)
    }
    val loanOneAdapter = LoanOneAdapter(viewModel.loanOneList.value?:mutableListOf())
    binding.recyclerLoanOne.adapter = loanOneAdapter
    loanOneAdapter.setOnItemClickListener(
    object : LoanOneAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : LoanoneRowModel) {
        onClickRecyclerLoanOne(view, position, item)
      }
    }
    )
    viewModel.loanOneList.observe(this) {
      loanOneAdapter.updateData(it)
    }
    binding.servicesVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerLifeInsuranceFilled(
    view: View,
    position: Int,
    item: LifeinsurancefilledRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerLoanOne(
    view: View,
    position: Int,
    item: LoanoneRowModel
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
      const val TAG: String = "SERVICES_ACTIVITY"

    }
  }
