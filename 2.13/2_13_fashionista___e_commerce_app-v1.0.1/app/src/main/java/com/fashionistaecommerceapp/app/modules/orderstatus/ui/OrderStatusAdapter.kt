package com.fashionistaecommerceapp.app.modules.orderstatus.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.databinding.RowOrderstatusBinding
import com.fashionistaecommerceapp.app.modules.orderstatus.`data`.model.OrderstatusRowModel
import kotlin.Int
import kotlin.collections.List

class OrderStatusAdapter(
  var list: List<OrderstatusRowModel>
) : RecyclerView.Adapter<OrderStatusAdapter.RowOrderstatusVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowOrderstatusVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_orderstatus,parent,false)
    return RowOrderstatusVH(view)
  }

  override fun onBindViewHolder(holder: RowOrderstatusVH, position: Int) {
    val orderstatusRowModel = OrderstatusRowModel()
    // TODO uncomment following line after integration with data source
    // val orderstatusRowModel = list[position]
    holder.binding.orderstatusRowModel = orderstatusRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<OrderstatusRowModel>) {
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
      item: OrderstatusRowModel
    ) {
    }
  }

  inner class RowOrderstatusVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowOrderstatusBinding = RowOrderstatusBinding.bind(itemView)
  }
}
