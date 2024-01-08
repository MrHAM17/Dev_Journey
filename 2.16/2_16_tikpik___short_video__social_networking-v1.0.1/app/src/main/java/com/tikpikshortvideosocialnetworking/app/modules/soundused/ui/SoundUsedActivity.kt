package com.tikpikshortvideosocialnetworking.app.modules.soundused.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivitySoundUsedBinding
import com.tikpikshortvideosocialnetworking.app.modules.soundused.`data`.model.SoundusedRowModel
import com.tikpikshortvideosocialnetworking.app.modules.soundused.`data`.viewmodel.SoundUsedVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SoundUsedActivity : BaseActivity<ActivitySoundUsedBinding>(R.layout.activity_sound_used) {
  private val viewModel: SoundUsedVM by viewModels<SoundUsedVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val soundUsedAdapter = SoundUsedAdapter(viewModel.soundUsedList.value?:mutableListOf())
    binding.recyclerSoundUsed.adapter = soundUsedAdapter
    soundUsedAdapter.setOnItemClickListener(
    object : SoundUsedAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SoundusedRowModel) {
        onClickRecyclerSoundUsed(view, position, item)
      }
    }
    )
    viewModel.soundUsedList.observe(this) {
      soundUsedAdapter.updateData(it)
    }
    binding.soundUsedVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerSoundUsed(
    view: View,
    position: Int,
    item: SoundusedRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "SOUND_USED_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SoundUsedActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
