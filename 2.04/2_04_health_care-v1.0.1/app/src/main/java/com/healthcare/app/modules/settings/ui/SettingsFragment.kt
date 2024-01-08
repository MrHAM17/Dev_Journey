package com.healthcare.app.modules.settings.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.healthcare.app.R
import com.healthcare.app.appcomponents.base.BaseFragment
import com.healthcare.app.databinding.FragmentSettingsBinding
import com.healthcare.app.modules.settings.`data`.model.SettingsRowModel
import com.healthcare.app.modules.settings.`data`.viewmodel.SettingsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SettingsFragment : BaseFragment<FragmentSettingsBinding>(R.layout.fragment_settings) {
  private val viewModel: SettingsVM by viewModels<SettingsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val settingsAdapter = SettingsAdapter(viewModel.settingsList.value?:mutableListOf())
    binding.recyclerSettings.adapter = settingsAdapter
    settingsAdapter.setOnItemClickListener(
    object : SettingsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SettingsRowModel) {
        onClickRecyclerSettings(view, position, item)
      }
    }
    )
    viewModel.settingsList.observe(requireActivity()) {
      settingsAdapter.updateData(it)
    }
    binding.settingsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerSettings(
    view: View,
    position: Int,
    item: SettingsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "SETTINGS_FRAGMENT"


    fun getInstance(bundle: Bundle?): SettingsFragment {
      val fragment = SettingsFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
