package com.banksydigitalbanking.app.modules.sendmoney.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.base.BaseActivity
import com.banksydigitalbanking.app.databinding.ActivitySendMoneyBinding
import com.banksydigitalbanking.app.modules.addperson.ui.AddPersonActivity
import com.banksydigitalbanking.app.modules.entermoney.ui.EnterMoneyActivity
import com.banksydigitalbanking.app.modules.sendmoney.`data`.model.NineteenRowModel
import com.banksydigitalbanking.app.modules.sendmoney.`data`.model.ProfilelistRowModel
import com.banksydigitalbanking.app.modules.sendmoney.`data`.model.TwentytwoRowModel
import com.banksydigitalbanking.app.modules.sendmoney.`data`.viewmodel.SendMoneyVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SendMoneyActivity : BaseActivity<ActivitySendMoneyBinding>(R.layout.activity_send_money) {
  private val viewModel: SendMoneyVM by viewModels<SendMoneyVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val profileListAdapter =
    ProfileListAdapter(viewModel.profileListList.value?:mutableListOf())
    binding.recyclerProfileList.adapter = profileListAdapter
    profileListAdapter.setOnItemClickListener(
    object : ProfileListAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ProfilelistRowModel) {
        onClickRecyclerProfileList(view, position, item)
      }
    }
    )
    viewModel.profileListList.observe(this) {
      profileListAdapter.updateData(it)
    }
    val nineteenAdapter = NineteenAdapter(viewModel.nineteenList.value?:mutableListOf())
    binding.recyclerNineteen.adapter = nineteenAdapter
    nineteenAdapter.setOnItemClickListener(
    object : NineteenAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : NineteenRowModel) {
        onClickRecyclerNineteen(view, position, item)
      }
    }
    )
    viewModel.nineteenList.observe(this) {
      nineteenAdapter.updateData(it)
    }
    val twentyTwoAdapter = TwentyTwoAdapter(viewModel.twentyTwoList.value?:mutableListOf())
    binding.recyclerTwentyTwo.adapter = twentyTwoAdapter
    twentyTwoAdapter.setOnItemClickListener(
    object : TwentyTwoAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : TwentytwoRowModel) {
        onClickRecyclerTwentyTwo(view, position, item)
      }
    }
    )
    viewModel.twentyTwoList.observe(this) {
      twentyTwoAdapter.updateData(it)
    }
    binding.sendMoneyVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnPlus.setOnClickListener {
      val destIntent = AddPersonActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerProfileList(
    view: View,
    position: Int,
    item: ProfilelistRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerNineteen(
    view: View,
    position: Int,
    item: NineteenRowModel
  ): Unit {
    when(view.id) {
      R.id.linearAngelinaDruff ->  {
        val destIntent = EnterMoneyActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  fun onClickRecyclerTwentyTwo(
    view: View,
    position: Int,
    item: TwentytwoRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "SEND_MONEY_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SendMoneyActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
