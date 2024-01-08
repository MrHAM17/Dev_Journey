package com.safebankmobilebankingapp.app.modules.statistics.ui

import androidx.fragment.app.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.base.BaseFragment
import com.safebankmobilebankingapp.app.databinding.FragmentStatisticsBinding
import com.safebankmobilebankingapp.app.modules.statistics.`data`.viewmodel.StatisticsVM
import kotlin.String
import kotlin.Unit

class StatisticsFragment : BaseFragment<FragmentStatisticsBinding>(R.layout.fragment_statistics) {
  private val viewModel: StatisticsVM by viewModels<StatisticsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.statisticsVM = viewModel
    val adapter = StatisticsFragmentPagerAdapter(childFragmentManager,lifecycle)
    binding..adapter = adapter
    TabLayoutMediator(binding.,binding.) { tab, position ->
      tab.text = StatisticsFragmentPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
    }

    companion object {
      const val TAG: String = "STATISTICS_FRAGMENT"

    }
  }
