package com.housitbuyrentsellproperty.app.modules.preferableselected.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityPreferableSelectedBinding
import com.housitbuyrentsellproperty.app.extensions.loadFragment
import com.housitbuyrentsellproperty.app.modules.home.ui.HomeFragment
import com.housitbuyrentsellproperty.app.modules.paymentempty.ui.PaymentEmptyFragment
import com.housitbuyrentsellproperty.app.modules.preferableselected.`data`.model.PreferableselectedRowModel
import com.housitbuyrentsellproperty.app.modules.preferableselected.`data`.viewmodel.PreferableSelectedVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class PreferableSelectedActivity :
    BaseActivity<ActivityPreferableSelectedBinding>(R.layout.activity_preferable_selected) {
  private val viewModel: PreferableSelectedVM by viewModels<PreferableSelectedVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val preferableSelectedAdapter =
    PreferableSelectedAdapter(viewModel.preferableSelectedList.value?:mutableListOf())
    binding.recyclerPreferableSelected.adapter = preferableSelectedAdapter
    preferableSelectedAdapter.setOnItemClickListener(
    object : PreferableSelectedAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : PreferableselectedRowModel) {
        onClickRecyclerPreferableSelected(view, position, item)
      }
    }
    )
    viewModel.preferableSelectedList.observe(this) {
      preferableSelectedAdapter.updateData(it)
    }
    binding.preferableSelectedVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnNext.setOnClickListener {
      val destFragment = PaymentEmptyFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = PaymentEmptyFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
    binding.btnSkip.setOnClickListener {
      val destFragment = HomeFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = HomeFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerPreferableSelected(
    view: View,
    position: Int,
    item: PreferableselectedRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "PREFERABLE_SELECTED_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, PreferableSelectedActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
