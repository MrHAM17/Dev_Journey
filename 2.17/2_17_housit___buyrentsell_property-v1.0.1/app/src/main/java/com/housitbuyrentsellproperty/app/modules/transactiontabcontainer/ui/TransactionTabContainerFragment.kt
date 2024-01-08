package com.housitbuyrentsellproperty.app.modules.transactiontabcontainer.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseFragment
import com.housitbuyrentsellproperty.app.databinding.FragmentTransactionTabContainerBinding
import com.housitbuyrentsellproperty.app.modules.editprofile.ui.EditProfileActivity
import com.housitbuyrentsellproperty.app.modules.transactiontabcontainer.`data`.viewmodel.TransactionTabContainerVM
import kotlin.String
import kotlin.Unit

class TransactionTabContainerFragment :
    BaseFragment<FragmentTransactionTabContainerBinding>(R.layout.fragment_transaction_tab_container)
    {
  private val viewModel: TransactionTabContainerVM by viewModels<TransactionTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.transactionTabContainerVM = viewModel
    val adapter = TransactionTabContainerFragmentPagerAdapter(childFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = TransactionTabContainerFragmentPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
      binding.btnEdit.setOnClickListener {
        val destIntent = EditProfileActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
    }

    companion object {
      const val TAG: String = "TRANSACTION_TAB_CONTAINER_FRAGMENT"


      fun getInstance(bundle: Bundle?): TransactionTabContainerFragment {
        val fragment = TransactionTabContainerFragment()
        fragment.arguments = bundle
        return fragment
      }
    }
  }
