package com.vertexrealestateapp.app.modules.pasttours.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityPastToursBinding
import com.vertexrealestateapp.app.modules.pasttours.`data`.viewmodel.PastToursVM
import kotlin.String
import kotlin.Unit

class PastToursActivity : BaseActivity<ActivityPastToursBinding>(R.layout.activity_past_tours) {
  private val viewModel: PastToursVM by viewModels<PastToursVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.pastToursVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "PAST_TOURS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, PastToursActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
