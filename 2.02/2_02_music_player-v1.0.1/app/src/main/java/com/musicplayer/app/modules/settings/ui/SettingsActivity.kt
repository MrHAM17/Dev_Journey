package com.musicplayer.app.modules.settings.ui

import android.view.View
import androidx.activity.viewModels
import com.musicplayer.app.R
import com.musicplayer.app.appcomponents.base.BaseActivity
import com.musicplayer.app.databinding.ActivitySettingsBinding
import com.musicplayer.app.modules.settings.`data`.model.EqualizerRowModel
import com.musicplayer.app.modules.settings.`data`.viewmodel.SettingsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SettingsActivity : BaseActivity<ActivitySettingsBinding>(R.layout.activity_settings) {
  private val viewModel: SettingsVM by viewModels<SettingsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val equalizerAdapter = EqualizerAdapter(viewModel.equalizerList.value?:mutableListOf())
    binding.recyclerEqualizer.adapter = equalizerAdapter
    equalizerAdapter.setOnItemClickListener(
    object : EqualizerAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : EqualizerRowModel) {
        onClickRecyclerEqualizer(view, position, item)
      }
    }
    )
    viewModel.equalizerList.observe(this) {
      equalizerAdapter.updateData(it)
    }
    binding.settingsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerEqualizer(
    view: View,
    position: Int,
    item: EqualizerRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "SETTINGS_ACTIVITY"

  }
}
