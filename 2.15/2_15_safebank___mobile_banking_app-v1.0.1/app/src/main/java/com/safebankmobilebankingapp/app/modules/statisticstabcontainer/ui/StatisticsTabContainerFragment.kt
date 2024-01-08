package com.safebankmobilebankingapp.app.modules.statisticstabcontainer.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.base.BaseFragment
import com.safebankmobilebankingapp.app.databinding.FragmentStatisticsTabContainerBinding
import com.safebankmobilebankingapp.app.modules.statisticstabcontainer.`data`.model.SpinnerUSDModel
import com.safebankmobilebankingapp.app.modules.statisticstabcontainer.`data`.viewmodel.StatisticsTabContainerVM
import kotlin.String
import kotlin.Unit

class StatisticsTabContainerFragment :
    BaseFragment<FragmentStatisticsTabContainerBinding>(R.layout.fragment_statistics_tab_container)
    {
  private val viewModel: StatisticsTabContainerVM by viewModels<StatisticsTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    viewModel.spinnerUSDList.value = mutableListOf(
    SpinnerUSDModel("Item1"),
    SpinnerUSDModel("Item2"),
    SpinnerUSDModel("Item3"),
    SpinnerUSDModel("Item4"),
    SpinnerUSDModel("Item5")
    )
    val spinnerUSDAdapter =
    SpinnerUSDAdapter(requireActivity(),R.layout.spinner_item,viewModel.spinnerUSDList.value?:
    mutableListOf())
    binding.spinnerUSD.adapter = spinnerUSDAdapter
    binding.statisticsTabContainerVM = viewModel
    val adapter = StatisticsTabContainerFragmentPagerAdapter(childFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = StatisticsTabContainerFragmentPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
    }

    companion object {
      const val TAG: String = "STATISTICS_TAB_CONTAINER_FRAGMENT"


      fun getInstance(bundle: Bundle?): StatisticsTabContainerFragment {
        val fragment = StatisticsTabContainerFragment()
        fragment.arguments = bundle
        return fragment
      }
    }
  }
