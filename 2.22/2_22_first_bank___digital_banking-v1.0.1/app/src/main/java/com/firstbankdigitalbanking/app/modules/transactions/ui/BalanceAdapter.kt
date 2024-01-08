package com.firstbankdigitalbanking.app.modules.transactions.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.databinding.RowBalance1Binding
import com.firstbankdigitalbanking.app.modules.transactions.`data`.model.Balance1RowModel
import kotlin.Int
import kotlin.collections.List

class BalanceAdapter(
  var list: List<Balance1RowModel>
) : RecyclerView.Adapter<BalanceAdapter.RowBalance1VH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowBalance1VH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_balance1,parent,false)
    return RowBalance1VH(view)
  }

  override fun onBindViewHolder(holder: RowBalance1VH, position: Int) {
    val balance1RowModel = Balance1RowModel()
    // TODO uncomment following line after integration with data source
    // val balance1RowModel = list[position]
    holder.binding.balance1RowModel = balance1RowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<Balance1RowModel>) {
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
      item: Balance1RowModel
    ) {
    }
  }

  inner class RowBalance1VH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowBalance1Binding = RowBalance1Binding.bind(itemView)
  }
}
