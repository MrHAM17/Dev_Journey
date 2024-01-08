package com.firstbankdigitalbanking.app.modules.home.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import androidx.core.view.GravityCompat
import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.base.BaseActivity
import com.firstbankdigitalbanking.app.databinding.ActivityHomeBinding
import com.firstbankdigitalbanking.app.modules.home.`data`.model.BalanceRowModel
import com.firstbankdigitalbanking.app.modules.home.`data`.model.LiviabatorRowModel
import com.firstbankdigitalbanking.app.modules.home.`data`.viewmodel.HomeVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class HomeActivity : BaseActivity<ActivityHomeBinding>(R.layout.activity_home) {
  private val viewModel: HomeVM by viewModels<HomeVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val balanceAdapter = BalanceAdapter(viewModel.balanceList.value?:mutableListOf())
    binding.recyclerBalance.adapter = balanceAdapter
    balanceAdapter.setOnItemClickListener(
    object : BalanceAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : BalanceRowModel) {
        onClickRecyclerBalance(view, position, item)
      }
    }
    )
    viewModel.balanceList.observe(this) {
      balanceAdapter.updateData(it)
    }
    val liviaBatorAdapter = LiviaBatorAdapter(viewModel.liviaBatorList.value?:mutableListOf())
    binding.recyclerLiviaBator.adapter = liviaBatorAdapter
    liviaBatorAdapter.setOnItemClickListener(
    object : LiviaBatorAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : LiviabatorRowModel) {
        onClickRecyclerLiviaBator(view, position, item)
      }
    }
    )
    viewModel.liviaBatorList.observe(this) {
      liviaBatorAdapter.updateData(it)
    }
    binding.homeVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
  }

  private fun toggleDrawer(): Unit {
    if (!binding.drawerLayout.isDrawerOpen(GravityCompat.START)) {
      binding.drawerLayout.openDrawer(GravityCompat.START)
    }
    else {
      binding.drawerLayout.closeDrawer(GravityCompat.START)
    }
  }

  fun onClickRecyclerBalance(
    view: View,
    position: Int,
    item: BalanceRowModel
  ): Unit {
  }

  fun onClickRecyclerLiviaBator(
    view: View,
    position: Int,
    item: LiviabatorRowModel
  ): Unit {
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
      const val TAG: String = "HOME_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, HomeActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
