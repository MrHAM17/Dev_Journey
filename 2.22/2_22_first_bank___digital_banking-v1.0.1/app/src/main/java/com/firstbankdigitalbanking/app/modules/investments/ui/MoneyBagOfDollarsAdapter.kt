package com.firstbankdigitalbanking.app.modules.investments.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.databinding.RowMoneybagofdollarsBinding
import com.firstbankdigitalbanking.app.modules.investments.`data`.model.MoneybagofdollarsRowModel
import kotlin.Int
import kotlin.collections.List

class MoneyBagOfDollarsAdapter(
  var list: List<MoneybagofdollarsRowModel>
) : RecyclerView.Adapter<MoneyBagOfDollarsAdapter.RowMoneybagofdollarsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowMoneybagofdollarsVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_moneybagofdollars,parent,false)
    return RowMoneybagofdollarsVH(view)
  }

  override fun onBindViewHolder(holder: RowMoneybagofdollarsVH, position: Int) {
    val moneybagofdollarsRowModel = MoneybagofdollarsRowModel()
    // TODO uncomment following line after integration with data source
    // val moneybagofdollarsRowModel = list[position]
    holder.binding.moneybagofdollarsRowModel = moneybagofdollarsRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<MoneybagofdollarsRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: MoneybagofdollarsRowModel
    ) {
    }
  }

  inner class RowMoneybagofdollarsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowMoneybagofdollarsBinding = RowMoneybagofdollarsBinding.bind(itemView)
  }
}
