package com.helthiotelehealth.app.modules.mycart.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.base.BaseActivity
import com.helthiotelehealth.app.databinding.ActivityMyCartBinding
import com.helthiotelehealth.app.modules.mycart.`data`.model.DurgsRowModel
import com.helthiotelehealth.app.modules.mycart.`data`.viewmodel.MyCartVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class MyCartActivity : BaseActivity<ActivityMyCartBinding>(R.layout.activity_my_cart) {
  private val viewModel: MyCartVM by viewModels<MyCartVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val durgsAdapter = DurgsAdapter(viewModel.durgsList.value?:mutableListOf())
    binding.recyclerDurgs.adapter = durgsAdapter
    durgsAdapter.setOnItemClickListener(
    object : DurgsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : DurgsRowModel) {
        onClickRecyclerDurgs(view, position, item)
      }
    }
    )
    viewModel.durgsList.observe(this) {
      durgsAdapter.updateData(it)
    }
    binding.myCartVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnCheckout.setOnClickListener {
      // TODO please, add your navigation code here
    }
  }

  fun onClickRecyclerDurgs(
    view: View,
    position: Int,
    item: DurgsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "MY_CART_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, MyCartActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
