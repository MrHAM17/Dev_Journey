package com.safebankmobilebankingapp.app.modules.transfertabcontainer.ui

import android.view.View
import androidx.activity.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.base.BaseActivity
import com.safebankmobilebankingapp.app.databinding.ActivityTransferTabContainerBinding
import com.safebankmobilebankingapp.app.modules.transfertabcontainer.`data`.model.TransfertabcontainerRowModel
import com.safebankmobilebankingapp.app.modules.transfertabcontainer.`data`.viewmodel.TransferTabContainerVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class TransferTabContainerActivity :
    BaseActivity<ActivityTransferTabContainerBinding>(R.layout.activity_transfer_tab_container) {
  private val viewModel: TransferTabContainerVM by viewModels<TransferTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val transferTabContainerAdapter =
    TransferTabContainerAdapter(viewModel.transferTabContainerList.value?:mutableListOf())
    binding.recyclerTransferTabContainer.adapter = transferTabContainerAdapter
    transferTabContainerAdapter.setOnItemClickListener(
    object : TransferTabContainerAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : TransfertabcontainerRowModel) {
        onClickRecyclerTransferTabContainer(view, position, item)
      }
    }
    )
    viewModel.transferTabContainerList.observe(this) {
      transferTabContainerAdapter.updateData(it)
    }
    binding.transferTabContainerVM = viewModel
    val adapter = TransferTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = TransferTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
      binding.btnArrowLeft.setOnClickListener {
        finish()
      }
    }

    fun onClickRecyclerTransferTabContainer(
      view: View,
      position: Int,
      item: TransfertabcontainerRowModel
    ): Unit {
      when(view.id) {
      }
    }

    companion object {
      const val TAG: String = "TRANSFER_TAB_CONTAINER_ACTIVITY"

    }
  }
