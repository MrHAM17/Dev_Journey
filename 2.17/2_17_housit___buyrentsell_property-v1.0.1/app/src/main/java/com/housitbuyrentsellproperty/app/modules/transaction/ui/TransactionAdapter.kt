package com.housitbuyrentsellproperty.app.modules.transaction.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowTransactionBinding
import com.housitbuyrentsellproperty.app.modules.transaction.`data`.model.TransactionRowModel
import kotlin.Int
import kotlin.collections.List

class TransactionAdapter(
  var list: List<TransactionRowModel>
) : RecyclerView.Adapter<TransactionAdapter.RowTransactionVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowTransactionVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_transaction,parent,false)
    return RowTransactionVH(view)
  }

  override fun onBindViewHolder(holder: RowTransactionVH, position: Int) {
    val transactionRowModel = TransactionRowModel()
    // TODO uncomment following line after integration with data source
    // val transactionRowModel = list[position]
    holder.binding.transactionRowModel = transactionRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<TransactionRowModel>) {
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
      item: TransactionRowModel
    ) {
    }
  }

  inner class RowTransactionVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowTransactionBinding = RowTransactionBinding.bind(itemView)
    init {
      binding.btnRent.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, TransactionRowModel())
      }
    }
  }
}
