package com.firstbankdigitalbanking.app.modules.investments.ui

import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.base.BaseActivity
import com.firstbankdigitalbanking.app.databinding.ActivityInvestmentsBinding
import com.firstbankdigitalbanking.app.modules.investments.`data`.model.ApplestoreRowModel
import com.firstbankdigitalbanking.app.modules.investments.`data`.model.MoneybagofdollarsRowModel
import com.firstbankdigitalbanking.app.modules.investments.`data`.viewmodel.InvestmentsVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String

class InvestmentsActivity : BaseActivity<ActivityInvestmentsBinding>(R.layout.activity_investments)
        {
    private val viewModel: InvestmentsVM by viewModels<InvestmentsVM>()

    override fun onInitialized() {
        viewModel.navArguments = intent.extras?.getBundle("bundle")
        val moneyBagOfDollarsAdapter =
                MoneyBagOfDollarsAdapter(viewModel.moneyBagOfDollarsList.value?:mutableListOf())
        binding.recyclerMoneyBagOfDollars.adapter = moneyBagOfDollarsAdapter
        moneyBagOfDollarsAdapter.setOnItemClickListener(
        object : MoneyBagOfDollarsAdapter.OnItemClickListener {
            override fun onItemClick(view:View, position:Int, item : MoneybagofdollarsRowModel) {
                onClickRecyclerMoneyBagOfDollars(view, position, item)
            }
        }
        )
        viewModel.moneyBagOfDollarsList.observe(this) {
            moneyBagOfDollarsAdapter.updateData(it)
        }
        val appleStoreAdapter = AppleStoreAdapter(viewModel.appleStoreList.value?:mutableListOf())
        binding.recyclerAppleStore.adapter = appleStoreAdapter
        appleStoreAdapter.setOnItemClickListener(
        object : AppleStoreAdapter.OnItemClickListener {
            override fun onItemClick(view:View, position:Int, item : ApplestoreRowModel) {
                onClickRecyclerAppleStore(view, position, item)
            }
        }
        )
        viewModel.appleStoreList.observe(this) {
            appleStoreAdapter.updateData(it)
        }
        binding.investmentsVM = viewModel
        setUpSearchViewSearchListener()
    }

    override fun setUpClicks() {
    }

    fun onClickRecyclerMoneyBagOfDollars(
        view: View,
        position: Int,
        item: MoneybagofdollarsRowModel
    ) {
    }

    fun onClickRecyclerAppleStore(
        view: View,
        position: Int,
        item: ApplestoreRowModel
    ) {
    }

    private fun setUpSearchViewSearchListener() {
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
            const val TAG: String = "INVESTMENTS_ACTIVITY"
        }
    }
