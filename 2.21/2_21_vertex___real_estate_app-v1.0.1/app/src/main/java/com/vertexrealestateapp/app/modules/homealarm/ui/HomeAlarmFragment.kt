package com.vertexrealestateapp.app.modules.homealarm.ui

import android.os.Bundle
import android.view.View
import androidx.appcompat.widget.SearchView
import androidx.fragment.app.viewModels
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseFragment
import com.vertexrealestateapp.app.databinding.FragmentHomeAlarmBinding
import com.vertexrealestateapp.app.modules.homealarm.`data`.model.HomealarmRowModel
import com.vertexrealestateapp.app.modules.homealarm.`data`.viewmodel.HomeAlarmVM
import com.vertexrealestateapp.app.modules.notification.ui.NotificationActivity
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class HomeAlarmFragment : BaseFragment<FragmentHomeAlarmBinding>(R.layout.fragment_home_alarm) {
  private val viewModel: HomeAlarmVM by viewModels<HomeAlarmVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val homeAlarmAdapter = HomeAlarmAdapter(viewModel.homeAlarmList.value?:mutableListOf())
    binding.recyclerHomeAlarm.adapter = homeAlarmAdapter
    homeAlarmAdapter.setOnItemClickListener(
    object : HomeAlarmAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : HomealarmRowModel) {
        onClickRecyclerHomeAlarm(view, position, item)
      }
    }
    )
    viewModel.homeAlarmList.observe(requireActivity()) {
      homeAlarmAdapter.updateData(it)
    }
    binding.homeAlarmVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
    binding.btnNotificationLight.setOnClickListener {
      val destIntent = NotificationActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  fun onClickRecyclerHomeAlarm(
    view: View,
    position: Int,
    item: HomealarmRowModel
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
      const val TAG: String = "HOME_ALARM_FRAGMENT"


      fun getInstance(bundle: Bundle?): HomeAlarmFragment {
        val fragment = HomeAlarmFragment()
        fragment.arguments = bundle
        return fragment
      }
    }
  }
