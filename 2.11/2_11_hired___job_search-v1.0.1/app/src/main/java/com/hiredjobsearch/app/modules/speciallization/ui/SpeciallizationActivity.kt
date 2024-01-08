package com.hiredjobsearch.app.modules.speciallization.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseActivity
import com.hiredjobsearch.app.databinding.ActivitySpeciallizationBinding
import com.hiredjobsearch.app.modules.confirmation.ui.ConfirmationDialog
import com.hiredjobsearch.app.modules.speciallization.`data`.model.SpeciallizationRowModel
import com.hiredjobsearch.app.modules.speciallization.`data`.viewmodel.SpeciallizationVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SpeciallizationActivity :
    BaseActivity<ActivitySpeciallizationBinding>(R.layout.activity_speciallization) {
  private val viewModel: SpeciallizationVM by viewModels<SpeciallizationVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val speciallizationAdapter =
    SpeciallizationAdapter(viewModel.speciallizationList.value?:mutableListOf())
    binding.recyclerSpeciallization.adapter = speciallizationAdapter
    speciallizationAdapter.setOnItemClickListener(
    object : SpeciallizationAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SpeciallizationRowModel) {
        onClickRecyclerSpeciallization(view, position, item)
      }
    }
    )
    viewModel.speciallizationList.observe(this) {
      speciallizationAdapter.updateData(it)
    }
    binding.speciallizationVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageImage.setOnClickListener {
      finish()
    }
    binding.btnContinue.setOnClickListener {
      val destFragment = ConfirmationDialog.getInstance(null)
      destFragment.show(this.supportFragmentManager, ConfirmationDialog.TAG)
    }
  }

  fun onClickRecyclerSpeciallization(
    view: View,
    position: Int,
    item: SpeciallizationRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "SPECIALLIZATION_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SpeciallizationActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
