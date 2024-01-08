package com.housitbuyrentsellproperty.app.modules.preferable.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityPreferableBinding
import com.housitbuyrentsellproperty.app.extensions.loadFragment
import com.housitbuyrentsellproperty.app.modules.home.ui.HomeFragment
import com.housitbuyrentsellproperty.app.modules.preferable.`data`.model.PreferableRowModel
import com.housitbuyrentsellproperty.app.modules.preferable.`data`.viewmodel.PreferableVM
import com.housitbuyrentsellproperty.app.modules.preferableselected.ui.PreferableSelectedActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class PreferableActivity : BaseActivity<ActivityPreferableBinding>(R.layout.activity_preferable) {
  private val viewModel: PreferableVM by viewModels<PreferableVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val preferableAdapter = PreferableAdapter(viewModel.preferableList.value?:mutableListOf())
    binding.recyclerPreferable.adapter = preferableAdapter
    preferableAdapter.setOnItemClickListener(
    object : PreferableAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : PreferableRowModel) {
        onClickRecyclerPreferable(view, position, item)
      }
    }
    )
    viewModel.preferableList.observe(this) {
      preferableAdapter.updateData(it)
    }
    binding.preferableVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
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
    binding.btnNext.setOnClickListener {
      val destIntent = PreferableSelectedActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerPreferable(
    view: View,
    position: Int,
    item: PreferableRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "PREFERABLE_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, PreferableActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
