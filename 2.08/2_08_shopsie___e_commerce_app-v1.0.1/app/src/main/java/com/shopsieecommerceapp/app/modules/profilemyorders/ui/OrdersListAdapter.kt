package com.shopsieecommerceapp.app.modules.profilemyorders.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.databinding.RowOrderslistBinding
import com.shopsieecommerceapp.app.modules.profilemyorders.`data`.model.OrderslistRowModel
import kotlin.Int
import kotlin.collections.List

class OrdersListAdapter(
  var list: List<OrderslistRowModel>
) : RecyclerView.Adapter<OrdersListAdapter.RowOrderslistVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowOrderslistVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_orderslist,parent,false)
    return RowOrderslistVH(view)
  }

  override fun onBindViewHolder(holder: RowOrderslistVH, position: Int) {
    val orderslistRowModel = OrderslistRowModel()
    // TODO uncomment following line after integration with data source
    // val orderslistRowModel = list[position]
    holder.binding.orderslistRowModel = orderslistRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<OrderslistRowModel>) {
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
      item: OrderslistRowModel
    ) {
    }
  }

  inner class RowOrderslistVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowOrderslistBinding = RowOrderslistBinding.bind(itemView)
  }
}
